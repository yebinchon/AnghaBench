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
struct drm_mm_scan {scalar_t__ hit_start; scalar_t__ hit_end; TYPE_1__* mm; } ;
struct drm_mm_node {int scanned_block; scalar_t__ start; scalar_t__ size; int /*<<< orphan*/  node_list; TYPE_1__* mm; } ;
struct TYPE_2__ {int /*<<< orphan*/  scan_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct drm_mm_node*,int /*<<< orphan*/ ) ; 
 struct drm_mm_node* FUNC3 (struct drm_mm_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  node_list ; 

bool FUNC4(struct drm_mm_scan *scan,
			      struct drm_mm_node *node)
{
	struct drm_mm_node *prev_node;

	FUNC0(node->mm != scan->mm);
	FUNC0(!node->scanned_block);
	node->scanned_block = false;

	FUNC0(!node->mm->scan_active);
	node->mm->scan_active--;

	/* During drm_mm_scan_add_block() we decoupled this node leaving
	 * its pointers intact. Now that the caller is walking back along
	 * the eviction list we can restore this block into its rightful
	 * place on the full node_list. To confirm that the caller is walking
	 * backwards correctly we check that prev_node->next == node->next,
	 * i.e. both believe the same node should be on the other side of the
	 * hole.
	 */
	prev_node = FUNC3(node, node_list);
	FUNC0(FUNC2(prev_node, node_list) !=
		      FUNC2(node, node_list));
	FUNC1(&node->node_list, &prev_node->node_list);

	return (node->start + node->size > scan->hit_start &&
		node->start < scan->hit_end);
}