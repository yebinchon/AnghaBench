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
struct TYPE_3__ {int ucEngineClockHigh; int ucMemoryClockHigh; int /*<<< orphan*/  ulFlags; int /*<<< orphan*/  usVDDC; int /*<<< orphan*/  usMemoryClockLow; int /*<<< orphan*/  usEngineClockLow; } ;
union pplib_clock_info {TYPE_1__ r600; } ;
typedef  int u32 ;
typedef  void* u16 ;
struct rv6xx_pl {int mclk; int sclk; int vddc; int flags; } ;
struct rv6xx_ps {struct rv6xx_pl high; struct rv6xx_pl medium; struct rv6xx_pl low; } ;
struct radeon_ps {int class; } ;
struct TYPE_4__ {int default_mclk; int default_sclk; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ clock; } ;

/* Variables and functions */
 int ATOM_PPLIB_CLASSIFICATION_BOOT ; 
 int ATOM_PPLIB_R600_FLAGS_PCIEGEN2 ; 
 scalar_t__ CHIP_RV610 ; 
 scalar_t__ CHIP_RV630 ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,void**,void**,void**) ; 
 struct rv6xx_ps* FUNC4 (struct radeon_ps*) ; 

__attribute__((used)) static void FUNC5(struct radeon_device *rdev,
					 struct radeon_ps *rps, int index,
					 union pplib_clock_info *clock_info)
{
	struct rv6xx_ps *ps = FUNC4(rps);
	u32 sclk, mclk;
	u16 vddc;
	struct rv6xx_pl *pl;

	switch (index) {
	case 0:
		pl = &ps->low;
		break;
	case 1:
		pl = &ps->medium;
		break;
	case 2:
	default:
		pl = &ps->high;
		break;
	}

	sclk = FUNC0(clock_info->r600.usEngineClockLow);
	sclk |= clock_info->r600.ucEngineClockHigh << 16;
	mclk = FUNC0(clock_info->r600.usMemoryClockLow);
	mclk |= clock_info->r600.ucMemoryClockHigh << 16;

	pl->mclk = mclk;
	pl->sclk = sclk;
	pl->vddc = FUNC0(clock_info->r600.usVDDC);
	pl->flags = FUNC1(clock_info->r600.ulFlags);

	/* patch up vddc if necessary */
	if (pl->vddc == 0xff01) {
		if (FUNC2(rdev, 0, 0, &vddc) == 0)
			pl->vddc = vddc;
	}

	/* fix up pcie gen2 */
	if (pl->flags & ATOM_PPLIB_R600_FLAGS_PCIEGEN2) {
		if ((rdev->family == CHIP_RV610) || (rdev->family == CHIP_RV630)) {
			if (pl->vddc < 1100)
				pl->flags &= ~ATOM_PPLIB_R600_FLAGS_PCIEGEN2;
		}
	}

	/* patch up boot state */
	if (rps->class & ATOM_PPLIB_CLASSIFICATION_BOOT) {
		u16 vddc, vddci, mvdd;
		FUNC3(rdev, &vddc, &vddci, &mvdd);
		pl->mclk = rdev->clock.default_mclk;
		pl->sclk = rdev->clock.default_sclk;
		pl->vddc = vddc;
	}
}