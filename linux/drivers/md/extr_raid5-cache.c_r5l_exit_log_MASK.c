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
struct r5l_log {int /*<<< orphan*/  io_kc; int /*<<< orphan*/  io_pool; int /*<<< orphan*/  bs; int /*<<< orphan*/  meta_pool; int /*<<< orphan*/  reclaim_thread; int /*<<< orphan*/  disable_writeback_work; } ;
struct r5conf {TYPE_1__* mddev; struct r5l_log* log; } ;
struct TYPE_2__ {int /*<<< orphan*/  sb_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct r5l_log*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct r5conf *conf)
{
	struct r5l_log *log = conf->log;

	conf->log = NULL;
	FUNC6();

	/* Ensure disable_writeback_work wakes up and exits */
	FUNC7(&conf->mddev->sb_wait);
	FUNC1(&log->disable_writeback_work);
	FUNC4(&log->reclaim_thread);
	FUNC5(&log->meta_pool);
	FUNC0(&log->bs);
	FUNC5(&log->io_pool);
	FUNC3(log->io_kc);
	FUNC2(log);
}