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
 int /*<<< orphan*/  PHM_PlatformCaps_DBRamping ; 
 int /*<<< orphan*/  PHM_PlatformCaps_EVV ; 
 int /*<<< orphan*/  PHM_PlatformCaps_SQRamping ; 
 int /*<<< orphan*/  PHM_PlatformCaps_TCPRamping ; 
 int /*<<< orphan*/  PHM_PlatformCaps_TDRamping ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct pp_hwmgr *hwmgr)
{
	FUNC0(hwmgr->platform_descriptor.platformCaps,
						PHM_PlatformCaps_EVV);
	FUNC1(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_SQRamping);
	FUNC1(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_DBRamping);
	FUNC1(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_TDRamping);
	FUNC1(hwmgr->platform_descriptor.platformCaps,
			PHM_PlatformCaps_TCPRamping);
	return 0;
}