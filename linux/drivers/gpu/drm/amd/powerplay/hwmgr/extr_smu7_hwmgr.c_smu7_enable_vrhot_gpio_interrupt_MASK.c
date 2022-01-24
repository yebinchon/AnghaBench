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
struct TYPE_2__ {int /*<<< orphan*/  platformCaps; } ;
struct pp_hwmgr {TYPE_1__ platform_descriptor; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHM_PlatformCaps_RegulatorHot ; 
 int /*<<< orphan*/  PPSMC_MSG_EnableVRHotGPIOInterrupt ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct pp_hwmgr *hwmgr)
{

	if (FUNC0(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_RegulatorHot))
		return FUNC1(hwmgr,
				PPSMC_MSG_EnableVRHotGPIOInterrupt);

	return 0;
}