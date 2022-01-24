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
struct sg_table {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct exynos_drm_gem {unsigned long dma_attrs; int flags; unsigned int size; int /*<<< orphan*/  pages; scalar_t__ dma_addr; int /*<<< orphan*/  cookie; TYPE_1__ base; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 unsigned long DMA_ATTR_FORCE_CONTIGUOUS ; 
 unsigned long DMA_ATTR_NON_CONSISTENT ; 
 unsigned long DMA_ATTR_NO_KERNEL_MAPPING ; 
 unsigned long DMA_ATTR_WRITE_COMBINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EXYNOS_BO_CACHABLE ; 
 int EXYNOS_BO_NONCONTIG ; 
 int EXYNOS_BO_WC ; 
 int GFP_KERNEL ; 
 unsigned int PAGE_SHIFT ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,scalar_t__*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,scalar_t__,unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct sg_table*,int /*<<< orphan*/ ,scalar_t__,unsigned int,unsigned long) ; 
 scalar_t__ FUNC5 (struct sg_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sg_table*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 

__attribute__((used)) static int FUNC10(struct exynos_drm_gem *exynos_gem)
{
	struct drm_device *dev = exynos_gem->base.dev;
	unsigned long attr;
	unsigned int nr_pages;
	struct sg_table sgt;
	int ret = -ENOMEM;

	if (exynos_gem->dma_addr) {
		FUNC0(FUNC9(dev), "already allocated.\n");
		return 0;
	}

	exynos_gem->dma_attrs = 0;

	/*
	 * if EXYNOS_BO_CONTIG, fully physically contiguous memory
	 * region will be allocated else physically contiguous
	 * as possible.
	 */
	if (!(exynos_gem->flags & EXYNOS_BO_NONCONTIG))
		exynos_gem->dma_attrs |= DMA_ATTR_FORCE_CONTIGUOUS;

	/*
	 * if EXYNOS_BO_WC or EXYNOS_BO_NONCACHABLE, writecombine mapping
	 * else cachable mapping.
	 */
	if (exynos_gem->flags & EXYNOS_BO_WC ||
			!(exynos_gem->flags & EXYNOS_BO_CACHABLE))
		attr = DMA_ATTR_WRITE_COMBINE;
	else
		attr = DMA_ATTR_NON_CONSISTENT;

	exynos_gem->dma_attrs |= attr;
	exynos_gem->dma_attrs |= DMA_ATTR_NO_KERNEL_MAPPING;

	nr_pages = exynos_gem->size >> PAGE_SHIFT;

	exynos_gem->pages = FUNC7(nr_pages, sizeof(struct page *),
			GFP_KERNEL | __GFP_ZERO);
	if (!exynos_gem->pages) {
		FUNC1(FUNC9(dev), "failed to allocate pages.\n");
		return -ENOMEM;
	}

	exynos_gem->cookie = FUNC2(FUNC9(dev), exynos_gem->size,
					     &exynos_gem->dma_addr, GFP_KERNEL,
					     exynos_gem->dma_attrs);
	if (!exynos_gem->cookie) {
		FUNC1(FUNC9(dev), "failed to allocate buffer.\n");
		goto err_free;
	}

	ret = FUNC4(FUNC9(dev), &sgt, exynos_gem->cookie,
				    exynos_gem->dma_addr, exynos_gem->size,
				    exynos_gem->dma_attrs);
	if (ret < 0) {
		FUNC1(FUNC9(dev), "failed to get sgtable.\n");
		goto err_dma_free;
	}

	if (FUNC5(&sgt, exynos_gem->pages, NULL,
					     nr_pages)) {
		FUNC1(FUNC9(dev), "invalid sgtable.\n");
		ret = -EINVAL;
		goto err_sgt_free;
	}

	FUNC8(&sgt);

	FUNC0(FUNC9(dev), "dma_addr(0x%lx), size(0x%lx)\n",
			(unsigned long)exynos_gem->dma_addr, exynos_gem->size);

	return 0;

err_sgt_free:
	FUNC8(&sgt);
err_dma_free:
	FUNC3(FUNC9(dev), exynos_gem->size, exynos_gem->cookie,
		       exynos_gem->dma_addr, exynos_gem->dma_attrs);
err_free:
	FUNC6(exynos_gem->pages);

	return ret;
}