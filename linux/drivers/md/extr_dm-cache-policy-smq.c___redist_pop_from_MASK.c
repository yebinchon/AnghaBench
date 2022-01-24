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
struct queue {unsigned int nr_levels; unsigned int qs; int /*<<< orphan*/  es; } ;
struct entry {unsigned int level; int /*<<< orphan*/  sentinel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,struct entry*) ; 
 struct entry* FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 struct entry* FUNC2 (int /*<<< orphan*/ ,struct entry*) ; 

__attribute__((used)) static struct entry *FUNC3(struct queue *q, unsigned level)
{
	struct entry *e;

	for (; level < q->nr_levels; level++)
		for (e = FUNC1(q->es, q->qs + level); e; e = FUNC2(q->es, e))
			if (!e->sentinel) {
				FUNC0(q->es, q->qs + e->level, e);
				return e;
			}

	return NULL;
}