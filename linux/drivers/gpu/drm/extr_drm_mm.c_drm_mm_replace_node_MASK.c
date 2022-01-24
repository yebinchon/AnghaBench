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
struct drm_mm_node {int allocated; int /*<<< orphan*/  rb_hole_addr; int /*<<< orphan*/  rb_hole_size; int /*<<< orphan*/  hole_stack; int /*<<< orphan*/  rb; int /*<<< orphan*/  node_list; struct drm_mm* mm; } ;
struct drm_mm {int /*<<< orphan*/  holes_addr; int /*<<< orphan*/  holes_size; int /*<<< orphan*/  interval_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(struct drm_mm_node *old, struct drm_mm_node *new)
{
	struct drm_mm *mm = old->mm;

	FUNC0(!old->allocated);

	*new = *old;

	FUNC2(&old->node_list, &new->node_list);
	FUNC4(&old->rb, &new->rb, &mm->interval_tree);

	if (FUNC1(old)) {
		FUNC2(&old->hole_stack, &new->hole_stack);
		FUNC4(&old->rb_hole_size,
				       &new->rb_hole_size,
				       &mm->holes_size);
		FUNC3(&old->rb_hole_addr,
				&new->rb_hole_addr,
				&mm->holes_addr);
	}

	old->allocated = false;
	new->allocated = true;
}