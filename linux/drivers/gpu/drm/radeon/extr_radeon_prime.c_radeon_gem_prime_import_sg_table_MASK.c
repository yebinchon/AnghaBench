#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sg_table {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  objects; } ;
struct radeon_device {TYPE_2__ gem; } ;
struct drm_gem_object {int dummy; } ;
struct TYPE_6__ {struct drm_gem_object base; } ;
struct radeon_bo {int prime_shared_count; TYPE_3__ tbo; int /*<<< orphan*/  list; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct dma_resv {int dummy; } ;
struct dma_buf_attachment {TYPE_1__* dmabuf; } ;
struct TYPE_4__ {int /*<<< orphan*/  size; struct dma_resv* resv; } ;

/* Variables and functions */
 struct drm_gem_object* FUNC0 (int) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_GTT ; 
 int /*<<< orphan*/  FUNC1 (struct dma_resv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_resv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sg_table*,struct dma_resv*,struct radeon_bo**) ; 

struct drm_gem_object *FUNC7(struct drm_device *dev,
							struct dma_buf_attachment *attach,
							struct sg_table *sg)
{
	struct dma_resv *resv = attach->dmabuf->resv;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_bo *bo;
	int ret;

	FUNC1(resv, NULL);
	ret = FUNC6(rdev, attach->dmabuf->size, PAGE_SIZE, false,
			       RADEON_GEM_DOMAIN_GTT, 0, sg, resv, &bo);
	FUNC2(resv);
	if (ret)
		return FUNC0(ret);

	FUNC4(&rdev->gem.mutex);
	FUNC3(&bo->list, &rdev->gem.objects);
	FUNC5(&rdev->gem.mutex);

	bo->prime_shared_count = 1;
	return &bo->tbo.base;
}