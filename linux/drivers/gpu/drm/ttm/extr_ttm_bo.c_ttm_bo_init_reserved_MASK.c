#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct ttm_placement {int dummy; } ;
struct ttm_operation_ctx {int dummy; } ;
struct ttm_mem_global {int dummy; } ;
struct TYPE_5__ {int io_reserved_vm; scalar_t__ io_reserved_count; } ;
struct TYPE_7__ {unsigned long size; unsigned long num_pages; int placement; TYPE_1__ bus; int /*<<< orphan*/  page_alignment; int /*<<< orphan*/ * mm_node; int /*<<< orphan*/  mem_type; } ;
struct dma_resv {int dummy; } ;
struct TYPE_6__ {struct dma_resv* resv; int /*<<< orphan*/  vma_node; struct dma_resv _resv; } ;
struct ttm_buffer_object {void (* destroy ) (struct ttm_buffer_object*) ;int type; unsigned long num_pages; size_t acc_size; TYPE_3__ mem; TYPE_2__ base; struct ttm_bo_device* bdev; struct sg_table* sg; int /*<<< orphan*/ * moving; int /*<<< orphan*/  wu_mutex; int /*<<< orphan*/  io_reserve_lru; int /*<<< orphan*/  swap; int /*<<< orphan*/  ddestroy; int /*<<< orphan*/  lru; int /*<<< orphan*/  cpu_writers; int /*<<< orphan*/  list_kref; int /*<<< orphan*/  kref; } ;
struct ttm_bo_device {TYPE_4__* glob; int /*<<< orphan*/  vma_manager; } ;
struct sg_table {int dummy; } ;
typedef  enum ttm_bo_type { ____Placeholder_ttm_bo_type } ttm_bo_type ;
struct TYPE_8__ {int /*<<< orphan*/  lru_lock; int /*<<< orphan*/  bo_count; struct ttm_mem_global* mem_glob; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 int TTM_PL_FLAG_CACHED ; 
 int TTM_PL_FLAG_NO_EVICT ; 
 int TTM_PL_FLAG_SYSTEM ; 
 int /*<<< orphan*/  TTM_PL_SYSTEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_resv*) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_resv*) ; 
 int FUNC6 (struct dma_resv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 void FUNC16 (struct ttm_buffer_object*) ; 
 void FUNC17 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC18 (struct ttm_buffer_object*) ; 
 void FUNC19 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC20 (struct ttm_buffer_object*) ; 
 scalar_t__ ttm_bo_type_device ; 
 scalar_t__ ttm_bo_type_sg ; 
 int /*<<< orphan*/  FUNC21 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC22 (struct ttm_buffer_object*) ; 
 int FUNC23 (struct ttm_buffer_object*,struct ttm_placement*,struct ttm_operation_ctx*) ; 
 int FUNC24 (struct ttm_mem_global*,size_t,struct ttm_operation_ctx*) ; 
 int /*<<< orphan*/  FUNC25 (struct ttm_mem_global*,size_t) ; 
 scalar_t__ FUNC26 (int) ; 

int FUNC27(struct ttm_bo_device *bdev,
			 struct ttm_buffer_object *bo,
			 unsigned long size,
			 enum ttm_bo_type type,
			 struct ttm_placement *placement,
			 uint32_t page_alignment,
			 struct ttm_operation_ctx *ctx,
			 size_t acc_size,
			 struct sg_table *sg,
			 struct dma_resv *resv,
			 void (*destroy) (struct ttm_buffer_object *))
{
	int ret = 0;
	unsigned long num_pages;
	struct ttm_mem_global *mem_glob = bdev->glob->mem_glob;
	bool locked;

	ret = FUNC24(mem_glob, acc_size, ctx);
	if (ret) {
		FUNC13("Out of kernel memory\n");
		if (destroy)
			(*destroy)(bo);
		else
			FUNC9(bo);
		return -ENOMEM;
	}

	num_pages = (size + PAGE_SIZE - 1) >> PAGE_SHIFT;
	if (num_pages == 0) {
		FUNC13("Illegal buffer object size\n");
		if (destroy)
			(*destroy)(bo);
		else
			FUNC9(bo);
		FUNC25(mem_glob, acc_size);
		return -EINVAL;
	}
	bo->destroy = destroy ? destroy : ttm_bo_default_destroy;

	FUNC10(&bo->kref);
	FUNC10(&bo->list_kref);
	FUNC3(&bo->cpu_writers, 0);
	FUNC0(&bo->lru);
	FUNC0(&bo->ddestroy);
	FUNC0(&bo->swap);
	FUNC0(&bo->io_reserve_lru);
	FUNC12(&bo->wu_mutex);
	bo->bdev = bdev;
	bo->type = type;
	bo->num_pages = num_pages;
	bo->mem.size = num_pages << PAGE_SHIFT;
	bo->mem.mem_type = TTM_PL_SYSTEM;
	bo->mem.num_pages = bo->num_pages;
	bo->mem.mm_node = NULL;
	bo->mem.page_alignment = page_alignment;
	bo->mem.bus.io_reserved_vm = false;
	bo->mem.bus.io_reserved_count = 0;
	bo->moving = NULL;
	bo->mem.placement = (TTM_PL_FLAG_SYSTEM | TTM_PL_FLAG_CACHED);
	bo->acc_size = acc_size;
	bo->sg = sg;
	if (resv) {
		bo->base.resv = resv;
		FUNC4(bo->base.resv);
	} else {
		bo->base.resv = &bo->base._resv;
	}
	if (!FUNC22(bo)) {
		/*
		 * bo.gem is not initialized, so we have to setup the
		 * struct elements we want use regardless.
		 */
		FUNC5(&bo->base._resv);
		FUNC7(&bo->base.vma_node);
	}
	FUNC2(&bo->bdev->glob->bo_count);

	/*
	 * For ttm_bo_type_device buffers, allocate
	 * address space from the device.
	 */
	if (bo->type == ttm_bo_type_device ||
	    bo->type == ttm_bo_type_sg)
		ret = FUNC8(&bdev->vma_manager, &bo->base.vma_node,
					 bo->mem.num_pages);

	/* passed reservation objects should already be locked,
	 * since otherwise lockdep will be angered in radeon.
	 */
	if (!resv) {
		locked = FUNC6(bo->base.resv);
		FUNC1(!locked);
	}

	if (FUNC11(!ret))
		ret = FUNC23(bo, placement, ctx);

	if (FUNC26(ret)) {
		if (!resv)
			FUNC21(bo);

		FUNC20(bo);
		return ret;
	}

	if (resv && !(bo->mem.placement & TTM_PL_FLAG_NO_EVICT)) {
		FUNC14(&bdev->glob->lru_lock);
		FUNC18(bo);
		FUNC15(&bdev->glob->lru_lock);
	}

	return ret;
}