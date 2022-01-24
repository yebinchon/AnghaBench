#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xway_stp {int edge; int groups; int dsl; int phy1; int phy2; int reserved; int /*<<< orphan*/  virt; } ;

/* Variables and functions */
 int XWAY_STP_ADSL_MASK ; 
 int XWAY_STP_ADSL_SHIFT ; 
 int /*<<< orphan*/  XWAY_STP_AR ; 
 int /*<<< orphan*/  XWAY_STP_CON0 ; 
 int /*<<< orphan*/  XWAY_STP_CON1 ; 
 int /*<<< orphan*/  XWAY_STP_CON_SWU ; 
 int /*<<< orphan*/  XWAY_STP_CPU0 ; 
 int /*<<< orphan*/  XWAY_STP_CPU1 ; 
 int XWAY_STP_EDGE_MASK ; 
 int XWAY_STP_GROUP_MASK ; 
 int XWAY_STP_PHY1_SHIFT ; 
 int XWAY_STP_PHY2_SHIFT ; 
 int XWAY_STP_PHY_MASK ; 
 int XWAY_STP_UPD_FPI ; 
 int XWAY_STP_UPD_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct xway_stp *chip)
{
	/* sane defaults */
	FUNC0(chip->virt, 0, XWAY_STP_AR);
	FUNC0(chip->virt, 0, XWAY_STP_CPU0);
	FUNC0(chip->virt, 0, XWAY_STP_CPU1);
	FUNC0(chip->virt, XWAY_STP_CON_SWU, XWAY_STP_CON0);
	FUNC0(chip->virt, 0, XWAY_STP_CON1);

	/* apply edge trigger settings for the shift register */
	FUNC1(chip->virt, XWAY_STP_EDGE_MASK,
				chip->edge, XWAY_STP_CON0);

	/* apply led group settings */
	FUNC1(chip->virt, XWAY_STP_GROUP_MASK,
				chip->groups, XWAY_STP_CON1);

	/* tell the hardware which pins are controlled by the dsl modem */
	FUNC1(chip->virt,
			XWAY_STP_ADSL_MASK << XWAY_STP_ADSL_SHIFT,
			chip->dsl << XWAY_STP_ADSL_SHIFT,
			XWAY_STP_CON0);

	/* tell the hardware which pins are controlled by the phys */
	FUNC1(chip->virt,
			XWAY_STP_PHY_MASK << XWAY_STP_PHY1_SHIFT,
			chip->phy1 << XWAY_STP_PHY1_SHIFT,
			XWAY_STP_CON0);
	FUNC1(chip->virt,
			XWAY_STP_PHY_MASK << XWAY_STP_PHY2_SHIFT,
			chip->phy2 << XWAY_STP_PHY2_SHIFT,
			XWAY_STP_CON1);

	/* mask out the hw driven bits in gpio_request */
	chip->reserved = (chip->phy2 << 5) | (chip->phy1 << 2) | chip->dsl;

	/*
	 * if we have pins that are driven by hw, we need to tell the stp what
	 * clock to use as a timer.
	 */
	if (chip->reserved)
		FUNC1(chip->virt, XWAY_STP_UPD_MASK,
			XWAY_STP_UPD_FPI, XWAY_STP_CON1);
}