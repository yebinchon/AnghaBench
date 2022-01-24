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
typedef  int u32 ;
struct rv7xx_power_info {int /*<<< orphan*/  boot_in_gen2; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int LC_GEN2_EN_STRAP ; 
 int FUNC0 (int) ; 
 int LC_HW_VOLTAGE_IF_CONTROL_MASK ; 
 int LC_OTHER_SIDE_EVER_SENT_GEN2 ; 
 int LC_OTHER_SIDE_SUPPORTS_GEN2 ; 
 int /*<<< orphan*/  PCIE_LC_SPEED_CNTL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct rv7xx_power_info* FUNC3 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev,
					       bool enable)
{
	struct rv7xx_power_info *pi = FUNC3(rdev);
	u32 tmp;

	tmp = FUNC1(PCIE_LC_SPEED_CNTL);
	if (enable) {
		tmp &= ~LC_HW_VOLTAGE_IF_CONTROL_MASK;
		tmp |= FUNC0(1);
		tmp |= LC_GEN2_EN_STRAP;
	} else {
		if (!pi->boot_in_gen2) {
			tmp &= ~LC_HW_VOLTAGE_IF_CONTROL_MASK;
			tmp &= ~LC_GEN2_EN_STRAP;
		}
	}
	if ((tmp & LC_OTHER_SIDE_EVER_SENT_GEN2) ||
	    (tmp & LC_OTHER_SIDE_SUPPORTS_GEN2))
		FUNC2(PCIE_LC_SPEED_CNTL, tmp);

}