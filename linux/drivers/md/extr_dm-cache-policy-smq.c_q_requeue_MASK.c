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
struct queue {unsigned int nr_levels; int /*<<< orphan*/  es; scalar_t__ qs; } ;
struct entry {unsigned int level; scalar_t__ sentinel; } ;

/* Variables and functions */
 struct entry* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct entry* FUNC1 (int /*<<< orphan*/ ,struct entry*) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct queue*,struct entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct queue*,struct entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct queue*,struct entry*,struct entry*) ; 

__attribute__((used)) static void FUNC6(struct queue *q, struct entry *e, unsigned extra_levels,
		      struct entry *s1, struct entry *s2)
{
	struct entry *de;
	unsigned sentinels_passed = 0;
	unsigned new_level = FUNC2(q->nr_levels - 1u, e->level + extra_levels);

	/* try and find an entry to swap with */
	if (extra_levels && (e->level < q->nr_levels - 1u)) {
		for (de = FUNC0(q->es, q->qs + new_level); de && de->sentinel; de = FUNC1(q->es, de))
			sentinels_passed++;

		if (de) {
			FUNC3(q, de);
			de->level = e->level;
			if (s1) {
				switch (sentinels_passed) {
				case 0:
					FUNC5(q, s1, de);
					break;

				case 1:
					FUNC5(q, s2, de);
					break;

				default:
					FUNC4(q, de);
				}
			} else
				FUNC4(q, de);
		}
	}

	FUNC3(q, e);
	e->level = new_level;
	FUNC4(q, e);
}