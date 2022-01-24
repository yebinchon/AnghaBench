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
struct drm_mm {int dummy; } ;
struct ttm_range_manager {int /*<<< orphan*/  lock; struct drm_mm mm; } ;
struct ttm_place {unsigned long lpfn; int flags; int /*<<< orphan*/  fpfn; } ;
struct ttm_mem_type_manager {unsigned long size; scalar_t__ priv; } ;
struct ttm_mem_reg {int /*<<< orphan*/  start; struct drm_mm_node* mm_node; int /*<<< orphan*/  page_alignment; int /*<<< orphan*/  num_pages; } ;
struct ttm_buffer_object {int dummy; } ;
struct drm_mm_node {int /*<<< orphan*/  start; } ;
typedef  enum drm_mm_insert_mode { ____Placeholder_drm_mm_insert_mode } drm_mm_insert_mode ;

/* Variables and functions */
 int DRM_MM_INSERT_BEST ; 
 int DRM_MM_INSERT_HIGH ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int TTM_PL_FLAG_TOPDOWN ; 
 int FUNC0 (struct drm_mm*,struct drm_mm_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_mm_node*) ; 
 struct drm_mm_node* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct ttm_mem_type_manager *man,
			       struct ttm_buffer_object *bo,
			       const struct ttm_place *place,
			       struct ttm_mem_reg *mem)
{
	struct ttm_range_manager *rman = (struct ttm_range_manager *) man->priv;
	struct drm_mm *mm = &rman->mm;
	struct drm_mm_node *node;
	enum drm_mm_insert_mode mode;
	unsigned long lpfn;
	int ret;

	lpfn = place->lpfn;
	if (!lpfn)
		lpfn = man->size;

	node = FUNC2(sizeof(*node), GFP_KERNEL);
	if (!node)
		return -ENOMEM;

	mode = DRM_MM_INSERT_BEST;
	if (place->flags & TTM_PL_FLAG_TOPDOWN)
		mode = DRM_MM_INSERT_HIGH;

	FUNC3(&rman->lock);
	ret = FUNC0(mm, node,
					  mem->num_pages,
					  mem->page_alignment, 0,
					  place->fpfn, lpfn, mode);
	FUNC4(&rman->lock);

	if (FUNC5(ret)) {
		FUNC1(node);
	} else {
		mem->mm_node = node;
		mem->start = node->start;
	}

	return 0;
}