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
struct entry_alloc {int /*<<< orphan*/  free; int /*<<< orphan*/  es; int /*<<< orphan*/  nr_allocated; } ;
struct entry {int allocated; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct entry*) ; 

__attribute__((used)) static void FUNC2(struct entry_alloc *ea, struct entry *e)
{
	FUNC0(!ea->nr_allocated);
	FUNC0(!e->allocated);

	ea->nr_allocated--;
	e->allocated = false;
	FUNC1(ea->es, &ea->free, e);
}