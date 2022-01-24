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
struct queue {unsigned int nr_levels; unsigned int* target_count; int /*<<< orphan*/  es; struct ilist* qs; } ;
struct ilist {unsigned int nr_elts; } ;
struct entry {unsigned int level; } ;

/* Variables and functions */
 struct entry* FUNC0 (struct queue*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ilist*,struct entry*) ; 
 struct entry* FUNC2 (int /*<<< orphan*/ ,struct ilist*) ; 
 int /*<<< orphan*/  FUNC3 (struct queue*) ; 

__attribute__((used)) static void FUNC4(struct queue *q)
{
	unsigned target, level;
	struct ilist *l, *l_above;
	struct entry *e;

	FUNC3(q);

	for (level = 0u; level < q->nr_levels - 1u; level++) {
		l = q->qs + level;
		target = q->target_count[level];

		/*
		 * Pull down some entries from the level above.
		 */
		while (l->nr_elts < target) {
			e = FUNC0(q, level + 1u);
			if (!e) {
				/* bug in nr_elts */
				break;
			}

			e->level = level;
			FUNC1(q->es, l, e);
		}

		/*
		 * Push some entries up.
		 */
		l_above = q->qs + level + 1u;
		while (l->nr_elts > target) {
			e = FUNC2(q->es, l);

			if (!e)
				/* bug in nr_elts */
				break;

			e->level = level + 1u;
			FUNC1(q->es, l_above, e);
		}
	}
}