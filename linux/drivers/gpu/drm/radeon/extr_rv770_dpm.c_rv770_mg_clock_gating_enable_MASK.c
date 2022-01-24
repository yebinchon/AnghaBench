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
struct rv7xx_power_info {scalar_t__ mgcgtssm; } ;
struct radeon_device {scalar_t__ family; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGTS_SM_CTRL_REG ; 
 int /*<<< orphan*/  CG_CGTT_LOCAL_0 ; 
 int /*<<< orphan*/  CG_CGTT_LOCAL_1 ; 
 scalar_t__ CHIP_RV770 ; 
 int RV770_MGCGCGTSSMCTRL_DFLT ; 
 int RV770_MGCGTTLOCAL0_DFLT ; 
 int RV770_MGCGTTLOCAL1_DFLT ; 
 int RV7XX_MGCGTTLOCAL0_DFLT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct rv7xx_power_info* FUNC1 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev,
					 bool enable)
{
	struct rv7xx_power_info *pi = FUNC1(rdev);

	if (enable) {
		u32 mgcg_cgtt_local0;

		if (rdev->family == CHIP_RV770)
			mgcg_cgtt_local0 = RV770_MGCGTTLOCAL0_DFLT;
		else
			mgcg_cgtt_local0 = RV7XX_MGCGTTLOCAL0_DFLT;

		FUNC0(CG_CGTT_LOCAL_0, mgcg_cgtt_local0);
		FUNC0(CG_CGTT_LOCAL_1, (RV770_MGCGTTLOCAL1_DFLT & 0xFFFFCFFF));

		if (pi->mgcgtssm)
			FUNC0(CGTS_SM_CTRL_REG, RV770_MGCGCGTSSMCTRL_DFLT);
	} else {
		FUNC0(CG_CGTT_LOCAL_0, 0xFFFFFFFF);
		FUNC0(CG_CGTT_LOCAL_1, 0xFFFFCFFF);
	}
}