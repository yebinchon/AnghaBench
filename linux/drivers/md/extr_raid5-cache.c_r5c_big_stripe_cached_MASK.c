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
struct r5l_log {int /*<<< orphan*/  big_stripe_tree; } ;
struct r5conf {struct r5l_log* log; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct r5conf*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

bool FUNC4(struct r5conf *conf, sector_t sect)
{
	struct r5l_log *log = conf->log;
	sector_t tree_index;
	void *slot;

	if (!log)
		return false;

	FUNC0(!FUNC3());
	tree_index = FUNC1(conf, sect);
	slot = FUNC2(&log->big_stripe_tree, tree_index);
	return slot != NULL;
}