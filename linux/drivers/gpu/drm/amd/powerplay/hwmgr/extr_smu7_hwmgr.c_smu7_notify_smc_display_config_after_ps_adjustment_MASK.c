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
struct pp_hwmgr {TYPE_1__* display_config; } ;
struct TYPE_2__ {int num_display; int /*<<< orphan*/  multi_monitor_in_sync; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*,int) ; 

__attribute__((used)) static int
FUNC1(struct pp_hwmgr *hwmgr)
{
	if (hwmgr->display_config->num_display > 1 &&
			!hwmgr->display_config->multi_monitor_in_sync)
		FUNC0(hwmgr, false);

	return 0;
}