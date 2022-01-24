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
struct log_c {struct log_c* usr_argv_str; int /*<<< orphan*/  flush_entry_pool; scalar_t__ log_dev; int /*<<< orphan*/  ti; int /*<<< orphan*/  luid; int /*<<< orphan*/  uuid; int /*<<< orphan*/  dmlog_wq; int /*<<< orphan*/  flush_log_work; int /*<<< orphan*/  sched_flush; scalar_t__ integrated_flush; } ;
struct dm_dirty_log {struct log_c* context; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_ULOG_DTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct log_c*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct dm_dirty_log *log)
{
	struct log_c *lc = log->context;

	if (lc->integrated_flush) {
		/* flush workqueue */
		if (FUNC0(&lc->sched_flush))
			FUNC4(&lc->flush_log_work);

		FUNC1(lc->dmlog_wq);
	}

	(void) FUNC2(lc->uuid, lc->luid, DM_ULOG_DTR,
				    NULL, 0, NULL, NULL);

	if (lc->log_dev)
		FUNC3(lc->ti, lc->log_dev);

	FUNC6(&lc->flush_entry_pool);

	FUNC5(lc->usr_argv_str);
	FUNC5(lc);

	return;
}