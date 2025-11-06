@Homepage @HealthcareProvider @Story_XYZ
Feature: Healthcare Provider Homepage Display and Functionality

  Background:
    Given the user is a standard web visitor
    And the user has navigated to the Healthcare Provider Homepage

  # ====================================================================
  # FEATURE: Global Navigation (Header)
  # ====================================================================

  Scenario Outline: Accessing Main Pages via Global Navigation
    Given the user is on the Homepage
    When the user clicks the "<Link_Name>" navigation link
    Then the user is redirected to the corresponding "<Expected_Destination>"

    Examples:
      | Link_Name | Expected_Destination |
      | Home      | /                   |
      | About     | /about              |
      | Services  | /services           |
      | Contact   | /contact            |

  # ====================================================================
  # FEATURE: Hero Banner Carousel
  # ====================================================================

  Scenario: Carousel displays core value proposition upon automatic transition
    Given the Hero Banner Carousel is visible
    When the automatic transition timeout is reached
    Then a different slide displaying a core value proposition is displayed

  Scenario: User manually advances the carousel slide
    Given the Hero Banner Carousel is visible
    And Slide 1 is currently displayed
    When the user clicks the next navigation arrow
    Then Slide 2, displaying a different core value proposition, is displayed

  # ====================================================================
  # FEATURE: Value Proposition Block
  # ====================================================================

  Scenario: Reviewing Key Services and Core Promises
    Given the user has scrolled past the Hero Banner
    When the user views the section titled 'Seamless Engagement'
    Then the section must contain exactly four distinct core promises
    And these promises must reflect a patient-first philosophy
    And these promises must reflect a commitment to innovation

  # ====================================================================
  # FEATURE: Primary Call-to-Action Button (CTA)
  # ====================================================================

  Scenario: Initiating Contact via Primary CTA
    Given the user is viewing the Value Proposition section
    When the user clicks the primary button labeled 'Let's connect'
    Then the user is navigated to the /contact or /scheduling page

  # ====================================================================
  # FEATURE: Key Service Columns (Service Overview)
  # ====================================================================

  Scenario: Reviewing the Three Main Service Channels
    Given the user scrolls to the service overview section
    When the user views the three distinct content columns
    Then the columns must convey information about the provider's focus on technology
    And the columns must convey information about experienced staff
    And the columns must convey information about the convenience of multiple locations

  # ====================================================================
  # FEATURE: Inspirational Quote
  # ====================================================================

  Scenario: Reading the Organizational Ethos
    Given the user views the dedicated quote section
    When the user reads the displayed text
    Then the text is presented as an inspirational message
    And the message is related to themes of success and positive examples

  # ====================================================================
  # FEATURE: Key Highlights Section (Header and Introductory Text)
  # ====================================================================

  Scenario: Identifying and understanding context for the Key Highlights section
    When the user scrolls down the page
    Then the user sees a visible section heading titled 'Key Highlights?'
    And the accompanying paragraph directs the user to look at subsequent staff-picked items

  # ====================================================================
  # FEATURE: Key Highlights Card Grid
  # ====================================================================

  Scenario: Understanding Core Principles via Card Grid
    Given the user is viewing the Key Highlights section
    When the user reviews the four card titles and corresponding descriptions
    Then the following four core principles are clearly communicated:
      | Principle |
      | Compassion |
      | Partnership |
      | Innovation |
      | Teamwork |

  # ====================================================================
  # FEATURE: Mission Statement Block
  # ====================================================================

  Scenario: Learning the Company History and Commitment
    Given the user is viewing the section with the headline 'Your health. Your voice. Your life.'
    When the user finishes reading the accompanying narrative text
    Then the text must clearly describe the company's founding philosophy
    And the text must cover the company's growth timeline
    And the text must reaffirm the commitment to patient care

  # ====================================================================
  # FEATURE: Global Footer
  # ====================================================================

  Scenario: Seeking Contact and Legal Information in the Footer
    When the user scrolls to the bottom of the page and examines the Global Footer
    Then the footer must contain the physical address of the provider
    And the footer must display contact numbers and methods
    And the footer must list the current hours of operation
    And the footer must include all required legal disclosures (e.g., Privacy Policy, Terms of Use links)