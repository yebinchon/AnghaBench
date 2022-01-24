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
typedef  unsigned long uint64_t ;
typedef  unsigned long uint32_t ;
typedef  unsigned long u64 ;
struct ttm_place {unsigned long lpfn; int flags; int /*<<< orphan*/  fpfn; } ;
struct ttm_mem_type_manager {unsigned long size; struct amdgpu_vram_mgr* priv; int /*<<< orphan*/  bdev; } ;
struct ttm_mem_reg {unsigned long num_pages; unsigned long page_alignment; struct drm_mm_node* mm_node; scalar_t__ start; } ;
struct ttm_buffer_object {int dummy; } ;
struct drm_mm_node {int dummy; } ;
struct drm_mm {int dummy; } ;
struct amdgpu_vram_mgr {int /*<<< orphan*/  usage; int /*<<< orphan*/  lock; int /*<<< orphan*/  vis_usage; struct drm_mm mm; } ;
struct TYPE_2__ {scalar_t__ mc_vram_size; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;
typedef  enum drm_mm_insert_mode { ____Placeholder_drm_mm_insert_mode } drm_mm_insert_mode ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 int DRM_MM_INSERT_BEST ; 
 int DRM_MM_INSERT_HIGH ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int GFP_KERNEL ; 
 unsigned long HPAGE_PMD_NR ; 
 unsigned long PAGE_SHIFT ; 
 int TTM_PL_FLAG_CONTIGUOUS ; 
 int TTM_PL_FLAG_TOPDOWN ; 
 int __GFP_ZERO ; 
 struct amdgpu_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_mem_reg*,struct drm_mm_node*) ; 
 scalar_t__ FUNC3 (struct amdgpu_device*,struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct drm_mm*,struct drm_mm_node*,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_mm_node*) ; 
 struct drm_mm_node* FUNC10 (unsigned long,int,int) ; 
 unsigned long FUNC11 (unsigned long,unsigned long) ; 
 unsigned long FUNC12 (unsigned long,unsigned long) ; 
 unsigned long FUNC13 (unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(struct ttm_mem_type_manager *man,
			       struct ttm_buffer_object *tbo,
			       const struct ttm_place *place,
			       struct ttm_mem_reg *mem)
{
	struct amdgpu_device *adev = FUNC1(man->bdev);
	struct amdgpu_vram_mgr *mgr = man->priv;
	struct drm_mm *mm = &mgr->mm;
	struct drm_mm_node *nodes;
	enum drm_mm_insert_mode mode;
	unsigned long lpfn, num_nodes, pages_per_node, pages_left;
	uint64_t vis_usage = 0, mem_bytes;
	unsigned i;
	int r;

	lpfn = place->lpfn;
	if (!lpfn)
		lpfn = man->size;

	/* bail out quickly if there's likely not enough VRAM for this BO */
	mem_bytes = (u64)mem->num_pages << PAGE_SHIFT;
	if (FUNC5(mem_bytes, &mgr->usage) > adev->gmc.mc_vram_size) {
		FUNC6(mem_bytes, &mgr->usage);
		mem->mm_node = NULL;
		return 0;
	}

	if (place->flags & TTM_PL_FLAG_CONTIGUOUS) {
		pages_per_node = ~0ul;
		num_nodes = 1;
	} else {
#ifdef CONFIG_TRANSPARENT_HUGEPAGE
		pages_per_node = HPAGE_PMD_NR;
#else
		/* default to 2MB */
		pages_per_node = (2UL << (20UL - PAGE_SHIFT));
#endif
		pages_per_node = FUNC11((uint32_t)pages_per_node, mem->page_alignment);
		num_nodes = FUNC0(mem->num_pages, pages_per_node);
	}

	nodes = FUNC10((uint32_t)num_nodes, sizeof(*nodes),
			       GFP_KERNEL | __GFP_ZERO);
	if (!nodes) {
		FUNC6(mem_bytes, &mgr->usage);
		return -ENOMEM;
	}

	mode = DRM_MM_INSERT_BEST;
	if (place->flags & TTM_PL_FLAG_TOPDOWN)
		mode = DRM_MM_INSERT_HIGH;

	mem->start = 0;
	pages_left = mem->num_pages;

	FUNC14(&mgr->lock);
	for (i = 0; pages_left >= pages_per_node; ++i) {
		unsigned long pages = FUNC13(pages_left);

		r = FUNC7(mm, &nodes[i], pages,
						pages_per_node, 0,
						place->fpfn, lpfn,
						mode);
		if (FUNC16(r))
			break;

		vis_usage += FUNC3(adev, &nodes[i]);
		FUNC2(mem, &nodes[i]);
		pages_left -= pages;
	}

	for (; pages_left; ++i) {
		unsigned long pages = FUNC12(pages_left, pages_per_node);
		uint32_t alignment = mem->page_alignment;

		if (pages == pages_per_node)
			alignment = pages_per_node;

		r = FUNC7(mm, &nodes[i],
						pages, alignment, 0,
						place->fpfn, lpfn,
						mode);
		if (FUNC16(r))
			goto error;

		vis_usage += FUNC3(adev, &nodes[i]);
		FUNC2(mem, &nodes[i]);
		pages_left -= pages;
	}
	FUNC15(&mgr->lock);

	FUNC4(vis_usage, &mgr->vis_usage);

	mem->mm_node = nodes;

	return 0;

error:
	while (i--)
		FUNC8(&nodes[i]);
	FUNC15(&mgr->lock);
	FUNC6(mem->num_pages << PAGE_SHIFT, &mgr->usage);

	FUNC9(nodes);
	return r == -ENOSPC ? 0 : r;
}