#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct sg_table {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct TYPE_10__ {int size; TYPE_2__* filp; } ;
struct TYPE_9__ {int pages_use_count; TYPE_5__ base; int /*<<< orphan*/  pages_lock; struct page** pages; } ;
struct TYPE_6__ {int start; } ;
struct panfrost_gem_object {int is_mapped; TYPE_4__ base; TYPE_3__* mmu; struct sg_table* sgts; TYPE_1__ node; int /*<<< orphan*/  is_heap; } ;
struct panfrost_device {int /*<<< orphan*/  dev; } ;
struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef  int pgoff_t ;
struct TYPE_8__ {int as; } ;
struct TYPE_7__ {struct address_space* f_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int IOMMU_NOEXEC ; 
 int IOMMU_READ ; 
 int IOMMU_WRITE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int NUM_FAULT_PAGES ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int FUNC1 (struct page*) ; 
 int SZ_2M ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int __GFP_ZERO ; 
 struct panfrost_gem_object* FUNC3 (struct panfrost_device*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (struct sg_table*) ; 
 void* FUNC10 (int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC12 (struct panfrost_device*,TYPE_3__*,int,int,struct sg_table*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct sg_table*,struct page**,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sg_table*) ; 
 struct page* FUNC17 (struct address_space*,int) ; 

__attribute__((used)) static int FUNC18(struct panfrost_device *pfdev, int as,
				       u64 addr)
{
	int ret, i;
	struct panfrost_gem_object *bo;
	struct address_space *mapping;
	pgoff_t page_offset;
	struct sg_table *sgt;
	struct page **pages;

	bo = FUNC3(pfdev, as, addr);
	if (!bo)
		return -ENOENT;

	if (!bo->is_heap) {
		FUNC4(pfdev->dev, "matching BO is not heap type (GPU VA = %llx)",
			 bo->node.start << PAGE_SHIFT);
		ret = -EINVAL;
		goto err_bo;
	}
	FUNC2(bo->mmu->as != as);

	/* Assume 2MB alignment and size multiple */
	addr &= ~((u64)SZ_2M - 1);
	page_offset = addr >> PAGE_SHIFT;
	page_offset -= bo->node.start;

	FUNC13(&bo->base.pages_lock);

	if (!bo->base.pages) {
		bo->sgts = FUNC10(bo->base.base.size / SZ_2M,
				     sizeof(struct sg_table), GFP_KERNEL | __GFP_ZERO);
		if (!bo->sgts) {
			FUNC14(&bo->base.pages_lock);
			ret = -ENOMEM;
			goto err_bo;
		}

		pages = FUNC10(bo->base.base.size >> PAGE_SHIFT,
				       sizeof(struct page *), GFP_KERNEL | __GFP_ZERO);
		if (!pages) {
			FUNC9(bo->sgts);
			bo->sgts = NULL;
			FUNC14(&bo->base.pages_lock);
			ret = -ENOMEM;
			goto err_bo;
		}
		bo->base.pages = pages;
		bo->base.pages_use_count = 1;
	} else
		pages = bo->base.pages;

	mapping = bo->base.base.filp->f_mapping;
	FUNC11(mapping);

	for (i = page_offset; i < page_offset + NUM_FAULT_PAGES; i++) {
		pages[i] = FUNC17(mapping, i);
		if (FUNC0(pages[i])) {
			FUNC14(&bo->base.pages_lock);
			ret = FUNC1(pages[i]);
			goto err_pages;
		}
	}

	FUNC14(&bo->base.pages_lock);

	sgt = &bo->sgts[page_offset / (SZ_2M / PAGE_SIZE)];
	ret = FUNC15(sgt, pages + page_offset,
					NUM_FAULT_PAGES, 0, SZ_2M, GFP_KERNEL);
	if (ret)
		goto err_pages;

	if (!FUNC6(pfdev->dev, sgt->sgl, sgt->nents, DMA_BIDIRECTIONAL)) {
		ret = -EINVAL;
		goto err_map;
	}

	FUNC12(pfdev, bo->mmu, addr, IOMMU_WRITE | IOMMU_READ | IOMMU_NOEXEC, sgt);

	bo->is_mapped = true;

	FUNC5(pfdev->dev, "mapped page fault @ AS%d %llx", as, addr);

	FUNC7(&bo->base.base);

	return 0;

err_map:
	FUNC16(sgt);
err_pages:
	FUNC8(&bo->base);
err_bo:
	FUNC7(&bo->base.base);
	return ret;
}