#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_mm_node {scalar_t__ hole_size; TYPE_1__* mm; int /*<<< orphan*/  rb_hole_addr; int /*<<< orphan*/  rb_hole_size; int /*<<< orphan*/  hole_stack; } ;
struct TYPE_2__ {int /*<<< orphan*/  holes_addr; int /*<<< orphan*/  holes_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct drm_mm_node *node)
{
	FUNC0(!FUNC1(node));

	FUNC2(&node->hole_stack);
	FUNC4(&node->rb_hole_size, &node->mm->holes_size);
	FUNC3(&node->rb_hole_addr, &node->mm->holes_addr);
	node->hole_size = 0;

	FUNC0(FUNC1(node));
}