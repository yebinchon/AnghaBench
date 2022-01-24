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
struct drm_mm_node {int /*<<< orphan*/  hole_stack; scalar_t__ hole_size; struct drm_mm* mm; } ;
struct drm_mm {int /*<<< orphan*/  hole_stack; int /*<<< orphan*/  holes_addr; int /*<<< orphan*/  holes_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  HOLE_ADDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_mm_node*) ; 
 scalar_t__ FUNC3 (struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rb_hole_addr ; 

__attribute__((used)) static void FUNC7(struct drm_mm_node *node)
{
	struct drm_mm *mm = node->mm;

	node->hole_size =
		FUNC2(node) - FUNC3(node);
	FUNC0(!FUNC4(node));

	FUNC5(&mm->holes_size, node);
	FUNC1(mm->holes_addr, rb_hole_addr, HOLE_ADDR);

	FUNC6(&node->hole_stack, &mm->hole_stack);
}