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
struct sg_table {int nents; int /*<<< orphan*/  sgl; } ;
struct page {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct exynos_drm_gem {int size; struct drm_gem_object base; int /*<<< orphan*/  pages; int /*<<< orphan*/  flags; struct sg_table* sgt; int /*<<< orphan*/  dma_addr; } ;
struct drm_device {int dummy; } ;
struct dma_buf_attachment {TYPE_1__* dmabuf; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct drm_gem_object* FUNC0 (int) ; 
 int /*<<< orphan*/  EXYNOS_BO_CONTIG ; 
 int /*<<< orphan*/  EXYNOS_BO_NONCONTIG ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct exynos_drm_gem*) ; 
 int PAGE_SHIFT ; 
 int FUNC2 (struct exynos_drm_gem*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*) ; 
 int FUNC4 (struct sg_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct exynos_drm_gem* FUNC5 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct exynos_drm_gem*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

struct drm_gem_object *
FUNC10(struct drm_device *dev,
				     struct dma_buf_attachment *attach,
				     struct sg_table *sgt)
{
	struct exynos_drm_gem *exynos_gem;
	int npages;
	int ret;

	exynos_gem = FUNC5(dev, attach->dmabuf->size);
	if (FUNC1(exynos_gem)) {
		ret = FUNC2(exynos_gem);
		return FUNC0(ret);
	}

	exynos_gem->dma_addr = FUNC9(sgt->sgl);

	npages = exynos_gem->size >> PAGE_SHIFT;
	exynos_gem->pages = FUNC8(npages, sizeof(struct page *), GFP_KERNEL);
	if (!exynos_gem->pages) {
		ret = -ENOMEM;
		goto err;
	}

	ret = FUNC4(sgt, exynos_gem->pages, NULL,
					       npages);
	if (ret < 0)
		goto err_free_large;

	exynos_gem->sgt = sgt;

	if (sgt->nents == 1) {
		/* always physically continuous memory if sgt->nents is 1. */
		exynos_gem->flags |= EXYNOS_BO_CONTIG;
	} else {
		/*
		 * this case could be CONTIG or NONCONTIG type but for now
		 * sets NONCONTIG.
		 * TODO. we have to find a way that exporter can notify
		 * the type of its own buffer to importer.
		 */
		exynos_gem->flags |= EXYNOS_BO_NONCONTIG;
	}

	return &exynos_gem->base;

err_free_large:
	FUNC7(exynos_gem->pages);
err:
	FUNC3(&exynos_gem->base);
	FUNC6(exynos_gem);
	return FUNC0(ret);
}