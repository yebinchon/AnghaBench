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
struct r5l_log {int /*<<< orphan*/  stripe_in_journal_count; } ;
struct r5conf {int max_degraded; int raid_disks; int group_cnt; struct r5l_log* log; } ;
typedef  int sector_t ;

/* Variables and functions */
 int BLOCK_SECTORS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct r5l_log*) ; 

__attribute__((used)) static sector_t FUNC2(struct r5conf *conf)
{
	struct r5l_log *log = conf->log;

	if (!FUNC1(log))
		return 0;

	return BLOCK_SECTORS *
		((conf->max_degraded + 1) * FUNC0(&log->stripe_in_journal_count) +
		 (conf->raid_disks - conf->max_degraded) * (conf->group_cnt + 1));
}