#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct r5l_log {int /*<<< orphan*/  last_checkpoint; int /*<<< orphan*/  log_start; TYPE_1__* rdev; } ;
struct r5conf {int /*<<< orphan*/  cache_state; } ;
typedef  int sector_t ;
struct TYPE_4__ {struct r5conf* private; } ;
struct TYPE_3__ {TYPE_2__* mddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  R5C_LOG_CRITICAL ; 
 int /*<<< orphan*/  R5C_LOG_TIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct r5l_log*) ; 
 int FUNC2 (struct r5conf*) ; 
 int FUNC3 (struct r5l_log*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct r5l_log*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC7(struct r5l_log *log)
{
	struct r5conf *conf = log->rdev->mddev->private;
	sector_t free_space;
	sector_t reclaim_space;
	bool wake_reclaim = false;

	if (!FUNC1(log))
		return;

	free_space = FUNC3(log, log->log_start,
				       log->last_checkpoint);
	reclaim_space = FUNC2(conf);
	if (free_space < 2 * reclaim_space)
		FUNC5(R5C_LOG_CRITICAL, &conf->cache_state);
	else {
		if (FUNC6(R5C_LOG_CRITICAL, &conf->cache_state))
			wake_reclaim = true;
		FUNC0(R5C_LOG_CRITICAL, &conf->cache_state);
	}
	if (free_space < 3 * reclaim_space)
		FUNC5(R5C_LOG_TIGHT, &conf->cache_state);
	else
		FUNC0(R5C_LOG_TIGHT, &conf->cache_state);

	if (wake_reclaim)
		FUNC4(log, 0);
}