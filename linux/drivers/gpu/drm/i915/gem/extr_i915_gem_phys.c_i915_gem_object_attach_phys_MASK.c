#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sg_table {int /*<<< orphan*/  sgl; } ;
struct TYPE_6__ {scalar_t__ madv; int /*<<< orphan*/  lock; scalar_t__ mapping; scalar_t__ quirked; } ;
struct TYPE_5__ {int size; } ;
struct drm_i915_gem_object {TYPE_2__ mm; TYPE_3__* ops; TYPE_1__ base; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* put_pages ) (struct drm_i915_gem_object*,struct sg_table*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  I915_GEM_OBJECT_UNBIND_ACTIVE ; 
 scalar_t__ I915_MADV_WILLNEED ; 
 int /*<<< orphan*/  FUNC0 (struct sg_table*) ; 
 int FUNC1 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_gem_object*,struct sg_table*,unsigned int) ; 
 struct sg_table* FUNC4 (struct drm_i915_gem_object*) ; 
 int FUNC5 (struct drm_i915_gem_object*,int /*<<< orphan*/ ) ; 
 TYPE_3__ i915_gem_phys_ops ; 
 TYPE_3__ i915_gem_shmem_ops ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_gem_object*,struct sg_table*) ; 

int FUNC10(struct drm_i915_gem_object *obj, int align)
{
	struct sg_table *pages;
	int err;

	if (align > obj->base.size)
		return -EINVAL;

	if (obj->ops == &i915_gem_phys_ops)
		return 0;

	if (obj->ops != &i915_gem_shmem_ops)
		return -EINVAL;

	err = FUNC5(obj, I915_GEM_OBJECT_UNBIND_ACTIVE);
	if (err)
		return err;

	FUNC7(&obj->mm.lock);

	if (obj->mm.madv != I915_MADV_WILLNEED) {
		err = -EFAULT;
		goto err_unlock;
	}

	if (obj->mm.quirked) {
		err = -EFAULT;
		goto err_unlock;
	}

	if (obj->mm.mapping) {
		err = -EBUSY;
		goto err_unlock;
	}

	pages = FUNC4(obj);

	obj->ops = &i915_gem_phys_ops;

	err = FUNC1(obj);
	if (err)
		goto err_xfer;

	/* Perma-pin (until release) the physical set of pages */
	FUNC2(obj);

	if (!FUNC0(pages))
		i915_gem_shmem_ops.put_pages(obj, pages);
	FUNC8(&obj->mm.lock);
	return 0;

err_xfer:
	obj->ops = &i915_gem_shmem_ops;
	if (!FUNC0(pages)) {
		unsigned int sg_page_sizes = FUNC6(pages->sgl);

		FUNC3(obj, pages, sg_page_sizes);
	}
err_unlock:
	FUNC8(&obj->mm.lock);
	return err;
}