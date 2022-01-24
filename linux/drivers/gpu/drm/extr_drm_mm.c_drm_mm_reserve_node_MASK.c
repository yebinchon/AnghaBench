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
typedef  scalar_t__ u64 ;
struct drm_mm_node {scalar_t__ start; scalar_t__ size; scalar_t__ hole_size; int allocated; int /*<<< orphan*/  node_list; struct drm_mm* mm; int /*<<< orphan*/  color; } ;
struct drm_mm {int /*<<< orphan*/  (* color_adjust ) (struct drm_mm_node*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ;} ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ FUNC0 (struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_mm_node*,struct drm_mm_node*) ; 
 struct drm_mm_node* FUNC3 (struct drm_mm*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_mm_node*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(struct drm_mm *mm, struct drm_mm_node *node)
{
	u64 end = node->start + node->size;
	struct drm_mm_node *hole;
	u64 hole_start, hole_end;
	u64 adj_start, adj_end;

	end = node->start + node->size;
	if (FUNC8(end <= node->start))
		return -ENOSPC;

	/* Find the relevant hole to add our node to */
	hole = FUNC3(mm, node->start);
	if (!hole)
		return -ENOSPC;

	adj_start = hole_start = FUNC0(hole);
	adj_end = hole_end = hole_start + hole->hole_size;

	if (mm->color_adjust)
		mm->color_adjust(hole, node->color, &adj_start, &adj_end);

	if (adj_start > node->start || adj_end < end)
		return -ENOSPC;

	node->mm = mm;

	FUNC4(&node->node_list, &hole->node_list);
	FUNC2(hole, node);
	node->allocated = true;
	node->hole_size = 0;

	FUNC5(hole);
	if (node->start > hole_start)
		FUNC1(hole);
	if (end < hole_end)
		FUNC1(node);

	FUNC6(node);
	return 0;
}