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
struct vc4_dev {int /*<<< orphan*/  bo_lock; TYPE_3__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  size; } ;
struct TYPE_5__ {TYPE_1__ base; int /*<<< orphan*/  vaddr; } ;
struct vc4_bo {int /*<<< orphan*/  madv; TYPE_2__ base; } ;
struct drm_printer {int dummy; } ;
struct drm_gem_cma_object {int /*<<< orphan*/  base; } ;
struct drm_device {int dummy; } ;
typedef  enum vc4_kernel_bo_type { ____Placeholder_vc4_kernel_bo_type } vc4_kernel_bo_type ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct vc4_bo* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_gem_cma_object*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  __VC4_MADV_NOTSUPP ; 
 struct drm_gem_cma_object* FUNC3 (struct drm_device*,size_t) ; 
 struct drm_printer FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 size_t FUNC8 (size_t,int /*<<< orphan*/ ) ; 
 struct vc4_bo* FUNC9 (int /*<<< orphan*/ *) ; 
 struct vc4_dev* FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*) ; 
 struct vc4_bo* FUNC12 (struct drm_device*,size_t,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_printer*,struct vc4_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_device*) ; 

struct vc4_bo *FUNC16(struct drm_device *dev, size_t unaligned_size,
			     bool allow_unzeroed, enum vc4_kernel_bo_type type)
{
	size_t size = FUNC8(unaligned_size, PAGE_SIZE);
	struct vc4_dev *vc4 = FUNC10(dev);
	struct drm_gem_cma_object *cma_obj;
	struct vc4_bo *bo;

	if (size == 0)
		return FUNC1(-EINVAL);

	/* First, try to get a vc4_bo from the kernel BO cache. */
	bo = FUNC12(dev, size, type);
	if (bo) {
		if (!allow_unzeroed)
			FUNC5(bo->base.vaddr, 0, bo->base.base.size);
		return bo;
	}

	cma_obj = FUNC3(dev, size);
	if (FUNC2(cma_obj)) {
		/*
		 * If we've run out of CMA memory, kill the cache of
		 * CMA allocations we've got laying around and try again.
		 */
		FUNC11(dev);
		cma_obj = FUNC3(dev, size);
	}

	if (FUNC2(cma_obj)) {
		/*
		 * Still not enough CMA memory, purge the userspace BO
		 * cache and retry.
		 * This is sub-optimal since we purge the whole userspace
		 * BO cache which forces user that want to re-use the BO to
		 * restore its initial content.
		 * Ideally, we should purge entries one by one and retry
		 * after each to see if CMA allocation succeeds. Or even
		 * better, try to find an entry with at least the same
		 * size.
		 */
		FUNC15(dev);
		cma_obj = FUNC3(dev, size);
	}

	if (FUNC2(cma_obj)) {
		struct drm_printer p = FUNC4(vc4->dev->dev);
		FUNC0("Failed to allocate from CMA:\n");
		FUNC14(&p, vc4);
		return FUNC1(-ENOMEM);
	}
	bo = FUNC9(&cma_obj->base);

	/* By default, BOs do not support the MADV ioctl. This will be enabled
	 * only on BOs that are exposed to userspace (V3D, V3D_SHADER and DUMB
	 * BOs).
	 */
	bo->madv = __VC4_MADV_NOTSUPP;

	FUNC6(&vc4->bo_lock);
	FUNC13(&cma_obj->base, type);
	FUNC7(&vc4->bo_lock);

	return bo;
}