#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct radeon_device {int family; TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CHIP_RV710 131 
#define  CHIP_RV730 130 
#define  CHIP_RV740 129 
#define  CHIP_RV770 128 
 int /*<<< orphan*/  r7xx_golden_dyn_gpr_registers ; 
 int /*<<< orphan*/  r7xx_golden_registers ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  rv710_golden_registers ; 
 int /*<<< orphan*/  rv710_mgcg_init ; 
 int /*<<< orphan*/  rv730_golden_registers ; 
 int /*<<< orphan*/  rv730_mgcg_init ; 
 int /*<<< orphan*/  rv740_golden_registers ; 
 int /*<<< orphan*/  rv740_mgcg_init ; 
 int /*<<< orphan*/  rv770_golden_registers ; 
 int /*<<< orphan*/  rv770_mgcg_init ; 
 int /*<<< orphan*/  rv770ce_golden_registers ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev)
{
	switch (rdev->family) {
	case CHIP_RV770:
		FUNC1(rdev,
						 r7xx_golden_registers,
						 (const u32)FUNC0(r7xx_golden_registers));
		FUNC1(rdev,
						 r7xx_golden_dyn_gpr_registers,
						 (const u32)FUNC0(r7xx_golden_dyn_gpr_registers));
		if (rdev->pdev->device == 0x994e)
			FUNC1(rdev,
							 rv770ce_golden_registers,
							 (const u32)FUNC0(rv770ce_golden_registers));
		else
			FUNC1(rdev,
							 rv770_golden_registers,
							 (const u32)FUNC0(rv770_golden_registers));
		FUNC1(rdev,
						 rv770_mgcg_init,
						 (const u32)FUNC0(rv770_mgcg_init));
		break;
	case CHIP_RV730:
		FUNC1(rdev,
						 r7xx_golden_registers,
						 (const u32)FUNC0(r7xx_golden_registers));
		FUNC1(rdev,
						 r7xx_golden_dyn_gpr_registers,
						 (const u32)FUNC0(r7xx_golden_dyn_gpr_registers));
		FUNC1(rdev,
						 rv730_golden_registers,
						 (const u32)FUNC0(rv730_golden_registers));
		FUNC1(rdev,
						 rv730_mgcg_init,
						 (const u32)FUNC0(rv730_mgcg_init));
		break;
	case CHIP_RV710:
		FUNC1(rdev,
						 r7xx_golden_registers,
						 (const u32)FUNC0(r7xx_golden_registers));
		FUNC1(rdev,
						 r7xx_golden_dyn_gpr_registers,
						 (const u32)FUNC0(r7xx_golden_dyn_gpr_registers));
		FUNC1(rdev,
						 rv710_golden_registers,
						 (const u32)FUNC0(rv710_golden_registers));
		FUNC1(rdev,
						 rv710_mgcg_init,
						 (const u32)FUNC0(rv710_mgcg_init));
		break;
	case CHIP_RV740:
		FUNC1(rdev,
						 rv740_golden_registers,
						 (const u32)FUNC0(rv740_golden_registers));
		FUNC1(rdev,
						 rv740_mgcg_init,
						 (const u32)FUNC0(rv740_mgcg_init));
		break;
	default:
		break;
	}
}