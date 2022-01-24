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
struct pp_hwmgr {TYPE_1__ platform_descriptor; } ;

/* Variables and functions */
#define  AMD_FAN_CTRL_AUTO 130 
#define  AMD_FAN_CTRL_MANUAL 129 
#define  AMD_FAN_CTRL_NONE 128 
 int /*<<< orphan*/  PHM_PlatformCaps_MicrocodeFanControl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC4 (struct pp_hwmgr*) ; 

__attribute__((used)) static void FUNC5(struct pp_hwmgr *hwmgr, uint32_t mode)
{
	switch (mode) {
	case AMD_FAN_CTRL_NONE:
		FUNC1(hwmgr, 100);
		break;
	case AMD_FAN_CTRL_MANUAL:
		if (FUNC0(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_MicrocodeFanControl))
			FUNC4(hwmgr);
		break;
	case AMD_FAN_CTRL_AUTO:
		if (!FUNC2(hwmgr, mode))
			FUNC3(hwmgr);
		break;
	default:
		break;
	}
}