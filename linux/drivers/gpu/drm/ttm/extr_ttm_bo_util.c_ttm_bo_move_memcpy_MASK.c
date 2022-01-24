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
struct ttm_tt {scalar_t__ state; int page_flags; } ;
struct ttm_operation_ctx {int /*<<< orphan*/  no_wait_gpu; int /*<<< orphan*/  interruptible; } ;
struct ttm_mem_type_manager {int flags; } ;
struct ttm_mem_reg {size_t mem_type; int num_pages; scalar_t__ start; scalar_t__ size; int /*<<< orphan*/ * mm_node; int /*<<< orphan*/  placement; } ;
struct ttm_buffer_object {struct ttm_tt* ttm; struct ttm_mem_reg mem; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {struct ttm_mem_type_manager* man; } ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int PAGE_SIZE ; 
 int TTM_MEMTYPE_FLAG_FIXED ; 
 int TTM_PAGE_FLAG_SWAPPED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ tt_unpopulated ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_buffer_object*,struct ttm_mem_reg*) ; 
 int FUNC3 (struct ttm_buffer_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (void*,void*,unsigned long) ; 
 int FUNC5 (struct ttm_tt*,void*,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ttm_tt*,void*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ttm_bo_device*,struct ttm_mem_reg*,void**) ; 
 int /*<<< orphan*/  FUNC9 (struct ttm_bo_device*,struct ttm_mem_reg*,void*) ; 
 int /*<<< orphan*/  FUNC10 (struct ttm_tt*) ; 
 int FUNC11 (struct ttm_tt*,struct ttm_operation_ctx*) ; 

int FUNC12(struct ttm_buffer_object *bo,
		       struct ttm_operation_ctx *ctx,
		       struct ttm_mem_reg *new_mem)
{
	struct ttm_bo_device *bdev = bo->bdev;
	struct ttm_mem_type_manager *man = &bdev->man[new_mem->mem_type];
	struct ttm_tt *ttm = bo->ttm;
	struct ttm_mem_reg *old_mem = &bo->mem;
	struct ttm_mem_reg old_copy = *old_mem;
	void *old_iomap;
	void *new_iomap;
	int ret;
	unsigned long i;
	unsigned long page;
	unsigned long add = 0;
	int dir;

	ret = FUNC3(bo, ctx->interruptible, ctx->no_wait_gpu);
	if (ret)
		return ret;

	ret = FUNC8(bdev, old_mem, &old_iomap);
	if (ret)
		return ret;
	ret = FUNC8(bdev, new_mem, &new_iomap);
	if (ret)
		goto out;

	/*
	 * Single TTM move. NOP.
	 */
	if (old_iomap == NULL && new_iomap == NULL)
		goto out2;

	/*
	 * Don't move nonexistent data. Clear destination instead.
	 */
	if (old_iomap == NULL &&
	    (ttm == NULL || (ttm->state == tt_unpopulated &&
			     !(ttm->page_flags & TTM_PAGE_FLAG_SWAPPED)))) {
		FUNC1(new_iomap, 0, new_mem->num_pages*PAGE_SIZE);
		goto out2;
	}

	/*
	 * TTM might be null for moves within the same region.
	 */
	if (ttm) {
		ret = FUNC11(ttm, ctx);
		if (ret)
			goto out1;
	}

	add = 0;
	dir = 1;

	if ((old_mem->mem_type == new_mem->mem_type) &&
	    (new_mem->start < old_mem->start + old_mem->size)) {
		dir = -1;
		add = new_mem->num_pages - 1;
	}

	for (i = 0; i < new_mem->num_pages; ++i) {
		page = i * dir + add;
		if (old_iomap == NULL) {
			pgprot_t prot = FUNC7(old_mem->placement,
						    PAGE_KERNEL);
			ret = FUNC6(ttm, new_iomap, page,
						   prot);
		} else if (new_iomap == NULL) {
			pgprot_t prot = FUNC7(new_mem->placement,
						    PAGE_KERNEL);
			ret = FUNC5(ttm, old_iomap, page,
						   prot);
		} else {
			ret = FUNC4(new_iomap, old_iomap, page);
		}
		if (ret)
			goto out1;
	}
	FUNC0();
out2:
	old_copy = *old_mem;
	*old_mem = *new_mem;
	new_mem->mm_node = NULL;

	if (man->flags & TTM_MEMTYPE_FLAG_FIXED) {
		FUNC10(ttm);
		bo->ttm = NULL;
	}

out1:
	FUNC9(bdev, old_mem, new_iomap);
out:
	FUNC9(bdev, &old_copy, old_iomap);

	/*
	 * On error, keep the mm node!
	 */
	if (!ret)
		FUNC2(bo, &old_copy);
	return ret;
}