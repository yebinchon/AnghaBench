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
struct TYPE_2__ {struct dlm_lock_resource* sb_lvbptr; int /*<<< orphan*/  sb_lkid; } ;
struct dlm_lock_resource {TYPE_1__ lksb; struct dlm_lock_resource* name; int /*<<< orphan*/  sync_locking_done; int /*<<< orphan*/  sync_locking; int /*<<< orphan*/  ls; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LKF_FORCEUNLOCK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct dlm_lock_resource*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct dlm_lock_resource *res)
{
	int ret = 0;

	if (!res)
		return;

	/*
	 * use FORCEUNLOCK flag, so we can unlock even the lock is on the
	 * waiting or convert queue
	 */
	ret = FUNC0(res->ls, res->lksb.sb_lkid, DLM_LKF_FORCEUNLOCK,
		&res->lksb, res);
	if (FUNC3(ret != 0))
		FUNC2("failed to unlock %s return %d\n", res->name, ret);
	else
		FUNC4(res->sync_locking, res->sync_locking_done);

	FUNC1(res->name);
	FUNC1(res->lksb.sb_lvbptr);
	FUNC1(res);
}