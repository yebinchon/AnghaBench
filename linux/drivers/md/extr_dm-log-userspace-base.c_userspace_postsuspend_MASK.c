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
struct log_c {int /*<<< orphan*/  luid; int /*<<< orphan*/  uuid; int /*<<< orphan*/  flush_log_work; int /*<<< orphan*/  sched_flush; scalar_t__ integrated_flush; } ;
struct dm_dirty_log {struct log_c* context; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_ULOG_POSTSUSPEND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct dm_dirty_log *log)
{
	int r;
	struct log_c *lc = log->context;

	/*
	 * Run planned flush earlier.
	 */
	if (lc->integrated_flush && FUNC0(&lc->sched_flush))
		FUNC2(&lc->flush_log_work);

	r = FUNC1(lc->uuid, lc->luid, DM_ULOG_POSTSUSPEND,
				 NULL, 0, NULL, NULL);

	return r;
}