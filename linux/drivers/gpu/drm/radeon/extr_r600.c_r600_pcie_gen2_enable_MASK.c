#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct radeon_device {int flags; scalar_t__ family; TYPE_2__* pdev; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {scalar_t__ max_bus_speed; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ CHIP_R600 ; 
 scalar_t__ CHIP_RV620 ; 
 scalar_t__ CHIP_RV635 ; 
 scalar_t__ CHIP_RV670 ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int LC_CURRENT_DATA_RATE ; 
 int LC_FORCE_DIS_HW_SPEED_CHANGE ; 
 int LC_FORCE_EN_HW_SPEED_CHANGE ; 
 int LC_GEN2_EN_STRAP ; 
 int LC_LINK_WIDTH_MASK ; 
 int LC_LINK_WIDTH_RD_MASK ; 
 int LC_LINK_WIDTH_RD_SHIFT ; 
 int LC_OTHER_SIDE_EVER_SENT_GEN2 ; 
 int LC_OTHER_SIDE_SUPPORTS_GEN2 ; 
 int LC_POINT_7_PLUS_EN ; 
 int LC_RECONFIG_ARC_MISSING_ESCAPE ; 
 int LC_RECONFIG_NOW ; 
 int LC_RENEGOTIATE_EN ; 
 int LC_RENEGOTIATION_SUPPORT ; 
 int LC_SPEED_CHANGE_ATTEMPTS_ALLOWED_MASK ; 
 int LC_SPEED_CHANGE_ATTEMPTS_ALLOWED_SHIFT ; 
 int LC_TARGET_LINK_SPEED_OVERRIDE_EN ; 
 int LC_UPCONFIGURE_DIS ; 
 int LC_VOLTAGE_TIMER_SEL_MASK ; 
 int MM_CFGREGS_CNTL ; 
 int MM_WR_TO_CFG_EN ; 
 int /*<<< orphan*/  PCIE_LC_LINK_WIDTH_CNTL ; 
 int /*<<< orphan*/  PCIE_LC_SPEED_CNTL ; 
 int /*<<< orphan*/  PCIE_LC_TRAINING_CNTL ; 
 scalar_t__ PCIE_SPEED_5_0GT ; 
 scalar_t__ PCIE_SPEED_8_0GT ; 
 int RADEON_IS_IGP ; 
 int RADEON_IS_PCIE ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int SELECTABLE_DEEMPHASIS ; 
 int TARGET_LINK_SPEED_MASK ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ radeon_pcie_gen2 ; 

__attribute__((used)) static void FUNC8(struct radeon_device *rdev)
{
	u32 link_width_cntl, lanes, speed_cntl, training_cntl, tmp;
	u16 link_cntl2;

	if (radeon_pcie_gen2 == 0)
		return;

	if (rdev->flags & RADEON_IS_IGP)
		return;

	if (!(rdev->flags & RADEON_IS_PCIE))
		return;

	/* x2 cards have a special sequence */
	if (FUNC0(rdev))
		return;

	/* only RV6xx+ chips are supported */
	if (rdev->family <= CHIP_R600)
		return;

	if ((rdev->pdev->bus->max_bus_speed != PCIE_SPEED_5_0GT) &&
		(rdev->pdev->bus->max_bus_speed != PCIE_SPEED_8_0GT))
		return;

	speed_cntl = FUNC4(PCIE_LC_SPEED_CNTL);
	if (speed_cntl & LC_CURRENT_DATA_RATE) {
		FUNC1("PCIE gen 2 link speeds already enabled\n");
		return;
	}

	FUNC1("enabling PCIE gen 2 link speeds, disable with radeon.pcie_gen2=0\n");

	/* 55 nm r6xx asics */
	if ((rdev->family == CHIP_RV670) ||
	    (rdev->family == CHIP_RV620) ||
	    (rdev->family == CHIP_RV635)) {
		/* advertise upconfig capability */
		link_width_cntl = FUNC4(PCIE_LC_LINK_WIDTH_CNTL);
		link_width_cntl &= ~LC_UPCONFIGURE_DIS;
		FUNC7(PCIE_LC_LINK_WIDTH_CNTL, link_width_cntl);
		link_width_cntl = FUNC4(PCIE_LC_LINK_WIDTH_CNTL);
		if (link_width_cntl & LC_RENEGOTIATION_SUPPORT) {
			lanes = (link_width_cntl & LC_LINK_WIDTH_RD_MASK) >> LC_LINK_WIDTH_RD_SHIFT;
			link_width_cntl &= ~(LC_LINK_WIDTH_MASK |
					     LC_RECONFIG_ARC_MISSING_ESCAPE);
			link_width_cntl |= lanes | LC_RECONFIG_NOW | LC_RENEGOTIATE_EN;
			FUNC7(PCIE_LC_LINK_WIDTH_CNTL, link_width_cntl);
		} else {
			link_width_cntl |= LC_UPCONFIGURE_DIS;
			FUNC7(PCIE_LC_LINK_WIDTH_CNTL, link_width_cntl);
		}
	}

	speed_cntl = FUNC4(PCIE_LC_SPEED_CNTL);
	if ((speed_cntl & LC_OTHER_SIDE_EVER_SENT_GEN2) &&
	    (speed_cntl & LC_OTHER_SIDE_SUPPORTS_GEN2)) {

		/* 55 nm r6xx asics */
		if ((rdev->family == CHIP_RV670) ||
		    (rdev->family == CHIP_RV620) ||
		    (rdev->family == CHIP_RV635)) {
			FUNC6(MM_CFGREGS_CNTL, 0x8);
			link_cntl2 = FUNC3(0x4088);
			FUNC6(MM_CFGREGS_CNTL, 0);
			/* not supported yet */
			if (link_cntl2 & SELECTABLE_DEEMPHASIS)
				return;
		}

		speed_cntl &= ~LC_SPEED_CHANGE_ATTEMPTS_ALLOWED_MASK;
		speed_cntl |= (0x3 << LC_SPEED_CHANGE_ATTEMPTS_ALLOWED_SHIFT);
		speed_cntl &= ~LC_VOLTAGE_TIMER_SEL_MASK;
		speed_cntl &= ~LC_FORCE_DIS_HW_SPEED_CHANGE;
		speed_cntl |= LC_FORCE_EN_HW_SPEED_CHANGE;
		FUNC7(PCIE_LC_SPEED_CNTL, speed_cntl);

		tmp = FUNC3(0x541c);
		FUNC6(0x541c, tmp | 0x8);
		FUNC6(MM_CFGREGS_CNTL, MM_WR_TO_CFG_EN);
		link_cntl2 = FUNC2(0x4088);
		link_cntl2 &= ~TARGET_LINK_SPEED_MASK;
		link_cntl2 |= 0x2;
		FUNC5(0x4088, link_cntl2);
		FUNC6(MM_CFGREGS_CNTL, 0);

		if ((rdev->family == CHIP_RV670) ||
		    (rdev->family == CHIP_RV620) ||
		    (rdev->family == CHIP_RV635)) {
			training_cntl = FUNC4(PCIE_LC_TRAINING_CNTL);
			training_cntl &= ~LC_POINT_7_PLUS_EN;
			FUNC7(PCIE_LC_TRAINING_CNTL, training_cntl);
		} else {
			speed_cntl = FUNC4(PCIE_LC_SPEED_CNTL);
			speed_cntl &= ~LC_TARGET_LINK_SPEED_OVERRIDE_EN;
			FUNC7(PCIE_LC_SPEED_CNTL, speed_cntl);
		}

		speed_cntl = FUNC4(PCIE_LC_SPEED_CNTL);
		speed_cntl |= LC_GEN2_EN_STRAP;
		FUNC7(PCIE_LC_SPEED_CNTL, speed_cntl);

	} else {
		link_width_cntl = FUNC4(PCIE_LC_LINK_WIDTH_CNTL);
		/* XXX: only disable it if gen1 bridge vendor == 0x111d or 0x1106 */
		if (1)
			link_width_cntl |= LC_UPCONFIGURE_DIS;
		else
			link_width_cntl &= ~LC_UPCONFIGURE_DIS;
		FUNC7(PCIE_LC_LINK_WIDTH_CNTL, link_width_cntl);
	}
}