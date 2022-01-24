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
struct r5l_log {unsigned long reclaim_target; int /*<<< orphan*/  reclaim_thread; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct r5l_log *log, sector_t space)
{
	unsigned long target;
	unsigned long new = (unsigned long)space; /* overflow in theory */

	if (!log)
		return;
	do {
		target = log->reclaim_target;
		if (new < target)
			return;
	} while (FUNC0(&log->reclaim_target, target, new) != target);
	FUNC1(log->reclaim_thread);
}