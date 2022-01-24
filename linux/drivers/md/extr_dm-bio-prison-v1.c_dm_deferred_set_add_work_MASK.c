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
struct list_head {int dummy; } ;
struct dm_deferred_set {size_t sweeper; size_t current_entry; int /*<<< orphan*/  lock; TYPE_1__* entries; } ;
struct TYPE_2__ {int /*<<< orphan*/  count; int /*<<< orphan*/  work_items; } ;

/* Variables and functions */
 unsigned int FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct dm_deferred_set *ds, struct list_head *work)
{
	int r = 1;
	unsigned long flags;
	unsigned next_entry;

	FUNC2(&ds->lock, flags);
	if ((ds->sweeper == ds->current_entry) &&
	    !ds->entries[ds->current_entry].count)
		r = 0;
	else {
		FUNC1(work, &ds->entries[ds->current_entry].work_items);
		next_entry = FUNC0(ds->current_entry);
		if (!ds->entries[next_entry].count)
			ds->current_entry = next_entry;
	}
	FUNC3(&ds->lock, flags);

	return r;
}