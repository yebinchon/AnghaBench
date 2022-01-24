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
typedef  int uint32_t ;
struct pp_hwmgr {int dummy; } ;

/* Variables and functions */
#define  AMD_FAN_CTRL_AUTO 130 
#define  AMD_FAN_CTRL_MANUAL 129 
#define  AMD_FAN_CTRL_NONE 128 
 int /*<<< orphan*/  PHM_PlatformCaps_MicrocodeFanControl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*) ; 

__attribute__((used)) static void FUNC3(struct pp_hwmgr *hwmgr, uint32_t mode)
{
	switch (mode) {
	case AMD_FAN_CTRL_NONE:
		break;
	case AMD_FAN_CTRL_MANUAL:
		if (FUNC0(PHM_PlatformCaps_MicrocodeFanControl))
			FUNC2(hwmgr);
		break;
	case AMD_FAN_CTRL_AUTO:
		if (FUNC0(PHM_PlatformCaps_MicrocodeFanControl))
			FUNC1(hwmgr);
		break;
	default:
		break;
	}
}