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
typedef  int /*<<< orphan*/  u64 ;
struct rvt_wss {int num_entries; int /*<<< orphan*/  total_count; int /*<<< orphan*/ * entries; int /*<<< orphan*/  clean_entry; int /*<<< orphan*/  clean_period; int /*<<< orphan*/  clean_counter; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct rvt_wss *wss)
{
	int entry;
	int weight;
	unsigned long bits;

	/* become the cleaner if we decrement the counter to zero */
	if (FUNC0(&wss->clean_counter)) {
		/*
		 * Set, not add, the clean period.  This avoids an issue
		 * where the counter could decrement below the clean period.
		 * Doing a set can result in lost decrements, slowing the
		 * clean advance.  Since this a heuristic, this possible
		 * slowdown is OK.
		 *
		 * An alternative is to loop, advancing the counter by a
		 * clean period until the result is > 0. However, this could
		 * lead to several threads keeping another in the clean loop.
		 * This could be mitigated by limiting the number of times
		 * we stay in the loop.
		 */
		FUNC2(&wss->clean_counter, wss->clean_period);

		/*
		 * Uniquely grab the entry to clean and move to next.
		 * The current entry is always the lower bits of
		 * wss.clean_entry.  The table size, wss.num_entries,
		 * is always a power-of-2.
		 */
		entry = (FUNC1(&wss->clean_entry) - 1)
			& (wss->num_entries - 1);

		/* clear the entry and count the bits */
		bits = FUNC5(&wss->entries[entry], 0);
		weight = FUNC4((u64)bits);
		/* only adjust the contended total count if needed */
		if (weight)
			FUNC3(weight, &wss->total_count);
	}
}