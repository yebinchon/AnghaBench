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
struct queue {int /*<<< orphan*/  nr_elts; scalar_t__ qs; int /*<<< orphan*/  es; } ;
struct entry {int /*<<< orphan*/  sentinel; scalar_t__ level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,struct entry*) ; 

__attribute__((used)) static void FUNC1(struct queue *q, struct entry *e)
{
	FUNC0(q->es, q->qs + e->level, e);
	if (!e->sentinel)
		q->nr_elts--;
}