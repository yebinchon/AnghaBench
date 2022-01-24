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
typedef  int uint32_t ;
struct sg_table {int dummy; } ;
struct page {int dummy; } ;
struct msm_gem_object {int /*<<< orphan*/  lock; int /*<<< orphan*/  pages; struct sg_table* sgt; } ;
struct drm_gem_object {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct dma_buf {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct drm_gem_object* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MSM_BO_WC ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_gem_object*,int) ; 
 int FUNC5 (struct sg_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct drm_device*,int,int /*<<< orphan*/ ,struct drm_gem_object**,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct msm_gem_object* FUNC11 (struct drm_gem_object*) ; 

struct drm_gem_object *FUNC12(struct drm_device *dev,
		struct dma_buf *dmabuf, struct sg_table *sgt)
{
	struct msm_gem_object *msm_obj;
	struct drm_gem_object *obj;
	uint32_t size;
	int ret, npages;

	/* if we don't have IOMMU, don't bother pretending we can import: */
	if (!FUNC8(dev)) {
		FUNC0(dev->dev, "cannot import without IOMMU\n");
		return FUNC1(-EINVAL);
	}

	size = FUNC2(dmabuf->size);

	ret = FUNC7(dev, size, MSM_BO_WC, &obj, false);
	if (ret)
		goto fail;

	FUNC4(dev, obj, size);

	npages = size / PAGE_SIZE;

	msm_obj = FUNC11(obj);
	FUNC9(&msm_obj->lock);
	msm_obj->sgt = sgt;
	msm_obj->pages = FUNC6(npages, sizeof(struct page *), GFP_KERNEL);
	if (!msm_obj->pages) {
		FUNC10(&msm_obj->lock);
		ret = -ENOMEM;
		goto fail;
	}

	ret = FUNC5(sgt, msm_obj->pages, NULL, npages);
	if (ret) {
		FUNC10(&msm_obj->lock);
		goto fail;
	}

	FUNC10(&msm_obj->lock);
	return obj;

fail:
	FUNC3(obj);
	return FUNC1(ret);
}