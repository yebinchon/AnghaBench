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
struct ilist {int /*<<< orphan*/  nr_elts; } ;
struct entry_space {int dummy; } ;
struct entry {int /*<<< orphan*/  sentinel; void* prev; void* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct entry_space*,struct ilist*,struct entry*) ; 
 struct entry* FUNC1 (struct entry_space*,struct entry*) ; 
 void* FUNC2 (struct entry_space*,struct entry*) ; 

__attribute__((used)) static void FUNC3(struct entry_space *es, struct ilist *l,
			 struct entry *old, struct entry *e)
{
	struct entry *prev = FUNC1(es, old);

	if (!prev)
		FUNC0(es, l, e);

	else {
		e->prev = old->prev;
		e->next = FUNC2(es, old);
		prev->next = old->prev = FUNC2(es, e);

		if (!e->sentinel)
			l->nr_elts++;
	}
}