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
struct pblk_gc {int gc_forced; int gc_enabled; int /*<<< orphan*/  lock; } ;
struct pblk {struct pblk_gc gc; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct pblk *pblk, int force)
{
	struct pblk_gc *gc = &pblk->gc;

	if (force < 0 || force > 1)
		return -EINVAL;

	FUNC1(&gc->lock);
	gc->gc_forced = force;

	if (force)
		gc->gc_enabled = 1;
	else
		gc->gc_enabled = 0;
	FUNC2(&gc->lock);

	FUNC0(pblk);

	return 0;
}