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
typedef  int u32 ;
struct c4iw_id_table {int max; int last; int flags; int /*<<< orphan*/  lock; scalar_t__ start; int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int C4IW_ID_TABLE_F_RANDOM ; 
 int RANDOM_SKIP ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

u32 FUNC6(struct c4iw_id_table *alloc)
{
	unsigned long flags;
	u32 obj;

	FUNC4(&alloc->lock, flags);

	obj = FUNC1(alloc->table, alloc->max, alloc->last);
	if (obj >= alloc->max)
		obj = FUNC0(alloc->table, alloc->max);

	if (obj < alloc->max) {
		if (alloc->flags & C4IW_ID_TABLE_F_RANDOM)
			alloc->last += FUNC2() % RANDOM_SKIP;
		else
			alloc->last = obj + 1;
		if (alloc->last >= alloc->max)
			alloc->last = 0;
		FUNC3(obj, alloc->table);
		obj += alloc->start;
	} else
		obj = -1;

	FUNC5(&alloc->lock, flags);
	return obj;
}