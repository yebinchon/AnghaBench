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
struct queue {unsigned int nr_levels; unsigned int* target_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct queue *q, unsigned nr_elts, unsigned lbegin, unsigned lend)
{
	unsigned level, nr_levels, entries_per_level, remainder;

	FUNC0(lbegin > lend);
	FUNC0(lend > q->nr_levels);
	nr_levels = lend - lbegin;
	entries_per_level = FUNC1(nr_elts, nr_levels);
	remainder = FUNC2(nr_elts, nr_levels);

	for (level = lbegin; level < lend; level++)
		q->target_count[level] =
			(level < (lbegin + remainder)) ? entries_per_level + 1u : entries_per_level;
}