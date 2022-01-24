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
struct entry_space {int dummy; } ;
struct entry_alloc {unsigned int nr_allocated; unsigned int begin; struct entry_space* es; int /*<<< orphan*/  free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct entry_space*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct entry_space*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct entry_alloc *ea, struct entry_space *es,
			   unsigned begin, unsigned end)
{
	unsigned i;

	ea->es = es;
	ea->nr_allocated = 0u;
	ea->begin = begin;

	FUNC2(&ea->free);
	for (i = begin; i != end; i++)
		FUNC1(ea->es, &ea->free, FUNC0(ea->es, i));
}