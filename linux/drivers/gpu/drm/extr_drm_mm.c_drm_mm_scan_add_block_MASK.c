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
struct drm_mm_scan {scalar_t__ size; scalar_t__ mode; scalar_t__ alignment; scalar_t__ remainder_mask; scalar_t__ hit_start; scalar_t__ hit_end; int /*<<< orphan*/  range_end; int /*<<< orphan*/  range_start; int /*<<< orphan*/  color; struct drm_mm* mm; } ;
struct drm_mm_node {int scanned_block; int /*<<< orphan*/  node_list; int /*<<< orphan*/  allocated; struct drm_mm* mm; } ;
struct drm_mm {int /*<<< orphan*/  (* color_adjust ) (struct drm_mm_node*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ;int /*<<< orphan*/  scan_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DRM_MM_INSERT_HIGH ; 
 scalar_t__ FUNC1 (struct drm_mm_node*) ; 
 scalar_t__ FUNC2 (struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 struct drm_mm_node* FUNC6 (struct drm_mm_node*,int /*<<< orphan*/ ) ; 
 struct drm_mm_node* FUNC7 (struct drm_mm_node*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  node_list ; 
 int /*<<< orphan*/  FUNC10 (struct drm_mm_node*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 

bool FUNC11(struct drm_mm_scan *scan,
			   struct drm_mm_node *node)
{
	struct drm_mm *mm = scan->mm;
	struct drm_mm_node *hole;
	u64 hole_start, hole_end;
	u64 col_start, col_end;
	u64 adj_start, adj_end;

	FUNC0(node->mm != mm);
	FUNC0(!node->allocated);
	FUNC0(node->scanned_block);
	node->scanned_block = true;
	mm->scan_active++;

	/* Remove this block from the node_list so that we enlarge the hole
	 * (distance between the end of our previous node and the start of
	 * or next), without poisoning the link so that we can restore it
	 * later in drm_mm_scan_remove_block().
	 */
	hole = FUNC7(node, node_list);
	FUNC0(FUNC6(hole, node_list) != node);
	FUNC3(&node->node_list);

	hole_start = FUNC2(hole);
	hole_end = FUNC1(hole);

	col_start = hole_start;
	col_end = hole_end;
	if (mm->color_adjust)
		mm->color_adjust(hole, scan->color, &col_start, &col_end);

	adj_start = FUNC8(col_start, scan->range_start);
	adj_end = FUNC9(col_end, scan->range_end);
	if (adj_end <= adj_start || adj_end - adj_start < scan->size)
		return false;

	if (scan->mode == DRM_MM_INSERT_HIGH)
		adj_start = adj_end - scan->size;

	if (scan->alignment) {
		u64 rem;

		if (FUNC5(scan->remainder_mask))
			rem = adj_start & scan->remainder_mask;
		else
			FUNC4(adj_start, scan->alignment, &rem);
		if (rem) {
			adj_start -= rem;
			if (scan->mode != DRM_MM_INSERT_HIGH)
				adj_start += scan->alignment;
			if (adj_start < FUNC8(col_start, scan->range_start) ||
			    FUNC9(col_end, scan->range_end) - adj_start < scan->size)
				return false;

			if (adj_end <= adj_start ||
			    adj_end - adj_start < scan->size)
				return false;
		}
	}

	scan->hit_start = adj_start;
	scan->hit_end = adj_start + scan->size;

	FUNC0(scan->hit_start >= scan->hit_end);
	FUNC0(scan->hit_start < hole_start);
	FUNC0(scan->hit_end > hole_end);

	return true;
}