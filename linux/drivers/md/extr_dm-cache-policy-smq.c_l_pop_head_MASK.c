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
struct ilist {int dummy; } ;
struct entry_space {int dummy; } ;
struct entry {int /*<<< orphan*/  sentinel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct entry_space*,struct ilist*,struct entry*) ; 
 struct entry* FUNC1 (struct entry_space*,struct ilist*) ; 
 struct entry* FUNC2 (struct entry_space*,struct entry*) ; 

__attribute__((used)) static struct entry *FUNC3(struct entry_space *es, struct ilist *l)
{
	struct entry *e;

	for (e = FUNC1(es, l); e; e = FUNC2(es, e))
		if (!e->sentinel) {
			FUNC0(es, l, e);
			return e;
		}

	return NULL;
}