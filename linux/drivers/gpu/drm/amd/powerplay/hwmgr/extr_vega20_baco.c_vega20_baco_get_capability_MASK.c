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
typedef  int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  platformCaps; } ;
struct pp_hwmgr {TYPE_1__ platform_descriptor; scalar_t__ adev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NBIF ; 
 int /*<<< orphan*/  PHM_PlatformCaps_BACO ; 
 int RCC_BIF_STRAP0__STRAP_PX_CAPABLE_MASK ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmRCC_BIF_STRAP0 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct pp_hwmgr *hwmgr, bool *cap)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)(hwmgr->adev);
	uint32_t reg;

	*cap = false;
	if (!FUNC2(hwmgr->platform_descriptor.platformCaps, PHM_PlatformCaps_BACO))
		return 0;

	if (((FUNC0(0x17569) & 0x20000000) >> 29) == 0x1) {
		reg = FUNC1(NBIF, 0, mmRCC_BIF_STRAP0);

		if (reg & RCC_BIF_STRAP0__STRAP_PX_CAPABLE_MASK)
			*cap = true;
	}

	return 0;
}