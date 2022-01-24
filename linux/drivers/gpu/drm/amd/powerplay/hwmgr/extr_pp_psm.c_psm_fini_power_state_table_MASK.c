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
struct pp_hwmgr {int /*<<< orphan*/ * current_ps; int /*<<< orphan*/ * ps; int /*<<< orphan*/ * request_ps; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

int FUNC1(struct pp_hwmgr *hwmgr)
{
	if (hwmgr == NULL)
		return -EINVAL;

	if (!hwmgr->ps)
		return 0;

	FUNC0(hwmgr->current_ps);
	FUNC0(hwmgr->request_ps);
	FUNC0(hwmgr->ps);
	hwmgr->request_ps = NULL;
	hwmgr->ps = NULL;
	hwmgr->current_ps = NULL;
	return 0;
}