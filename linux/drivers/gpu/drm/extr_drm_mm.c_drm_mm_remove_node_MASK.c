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
struct drm_mm_node {int allocated; int scanned_block; int /*<<< orphan*/  node_list; struct drm_mm* mm; } ;
struct drm_mm {int /*<<< orphan*/  interval_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_mm_node*) ; 
 scalar_t__ FUNC2 (struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_mm_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct drm_mm_node* FUNC5 (struct drm_mm_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  node_list ; 
 int /*<<< orphan*/  FUNC6 (struct drm_mm_node*) ; 

void FUNC7(struct drm_mm_node *node)
{
	struct drm_mm *mm = node->mm;
	struct drm_mm_node *prev_node;

	FUNC0(!node->allocated);
	FUNC0(node->scanned_block);

	prev_node = FUNC5(node, node_list);

	if (FUNC2(node))
		FUNC6(node);

	FUNC3(node, &mm->interval_tree);
	FUNC4(&node->node_list);
	node->allocated = false;

	if (FUNC2(prev_node))
		FUNC6(prev_node);
	FUNC1(prev_node);
}