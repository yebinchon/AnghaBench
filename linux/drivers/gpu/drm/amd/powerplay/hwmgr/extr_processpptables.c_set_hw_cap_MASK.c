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
typedef  enum phm_platform_caps { ____Placeholder_phm_platform_caps } phm_platform_caps ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct pp_hwmgr *hwmgr, bool enable,
		       enum phm_platform_caps cap)
{
	if (enable)
		FUNC0(hwmgr->platform_descriptor.platformCaps, cap);
	else
		FUNC1(hwmgr->platform_descriptor.platformCaps, cap);
}