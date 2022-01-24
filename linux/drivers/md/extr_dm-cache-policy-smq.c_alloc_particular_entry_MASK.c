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
struct entry_alloc {unsigned int begin; int /*<<< orphan*/  nr_allocated; int /*<<< orphan*/  free; int /*<<< orphan*/  es; } ;
struct entry {int /*<<< orphan*/  allocated; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct entry* FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct entry*) ; 

__attribute__((used)) static struct entry *FUNC4(struct entry_alloc *ea, unsigned i)
{
	struct entry *e = FUNC1(ea->es, ea->begin + i);

	FUNC0(e->allocated);

	FUNC3(ea->es, &ea->free, e);
	FUNC2(e);
	ea->nr_allocated++;

	return e;
}