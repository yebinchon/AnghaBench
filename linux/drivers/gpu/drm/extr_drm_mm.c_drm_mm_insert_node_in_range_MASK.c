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
struct drm_mm_node {scalar_t__ hole_size; unsigned long color; int allocated; int /*<<< orphan*/  node_list; scalar_t__ start; scalar_t__ size; struct drm_mm* mm; } ;
struct drm_mm {int /*<<< orphan*/  (* color_adjust ) (struct drm_mm_node*,unsigned long,scalar_t__*,scalar_t__*) ;int /*<<< orphan*/  holes_size; } ;
typedef  enum drm_mm_insert_mode { ____Placeholder_drm_mm_insert_mode } drm_mm_insert_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DRM_MM_INSERT_HIGH ; 
 int DRM_MM_INSERT_LOW ; 
 int DRM_MM_INSERT_ONCE ; 
 int ENOSPC ; 
 scalar_t__ FUNC1 (struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_mm_node* const) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_mm_node*,struct drm_mm_node* const) ; 
 struct drm_mm_node* FUNC5 (struct drm_mm* const,scalar_t__,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 struct drm_mm_node* FUNC11 (struct drm_mm* const,struct drm_mm_node*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_mm_node* const) ; 
 int /*<<< orphan*/  FUNC16 (struct drm_mm_node*,unsigned long,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC17 (int) ; 

int FUNC18(struct drm_mm * const mm,
				struct drm_mm_node * const node,
				u64 size, u64 alignment,
				unsigned long color,
				u64 range_start, u64 range_end,
				enum drm_mm_insert_mode mode)
{
	struct drm_mm_node *hole;
	u64 remainder_mask;
	bool once;

	FUNC0(range_start > range_end);

	if (FUNC17(size == 0 || range_end - range_start < size))
		return -ENOSPC;

	if (FUNC13(FUNC12(&mm->holes_size)) < size)
		return -ENOSPC;

	if (alignment <= 1)
		alignment = 0;

	once = mode & DRM_MM_INSERT_ONCE;
	mode &= ~DRM_MM_INSERT_ONCE;

	remainder_mask = FUNC6(alignment) ? alignment - 1 : 0;
	for (hole = FUNC5(mm, range_start, range_end, size, mode);
	     hole;
	     hole = once ? NULL : FUNC11(mm, hole, mode)) {
		u64 hole_start = FUNC1(hole);
		u64 hole_end = hole_start + hole->hole_size;
		u64 adj_start, adj_end;
		u64 col_start, col_end;

		if (mode == DRM_MM_INSERT_LOW && hole_start >= range_end)
			break;

		if (mode == DRM_MM_INSERT_HIGH && hole_end <= range_start)
			break;

		col_start = hole_start;
		col_end = hole_end;
		if (mm->color_adjust)
			mm->color_adjust(hole, color, &col_start, &col_end);

		adj_start = FUNC9(col_start, range_start);
		adj_end = FUNC10(col_end, range_end);

		if (adj_end <= adj_start || adj_end - adj_start < size)
			continue;

		if (mode == DRM_MM_INSERT_HIGH)
			adj_start = adj_end - size;

		if (alignment) {
			u64 rem;

			if (FUNC7(remainder_mask))
				rem = adj_start & remainder_mask;
			else
				FUNC3(adj_start, alignment, &rem);
			if (rem) {
				adj_start -= rem;
				if (mode != DRM_MM_INSERT_HIGH)
					adj_start += alignment;

				if (adj_start < FUNC9(col_start, range_start) ||
				    FUNC10(col_end, range_end) - adj_start < size)
					continue;

				if (adj_end <= adj_start ||
				    adj_end - adj_start < size)
					continue;
			}
		}

		node->mm = mm;
		node->size = size;
		node->start = adj_start;
		node->color = color;
		node->hole_size = 0;

		FUNC8(&node->node_list, &hole->node_list);
		FUNC4(hole, node);
		node->allocated = true;

		FUNC14(hole);
		if (adj_start > hole_start)
			FUNC2(hole);
		if (adj_start + size < hole_end)
			FUNC2(node);

		FUNC15(node);
		return 0;
	}

	return -ENOSPC;
}