#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sg_table {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  pages_pin_count; } ;
struct drm_i915_gem_object {TYPE_2__ mm; TYPE_1__* ops; int /*<<< orphan*/  bind_count; } ;
typedef  enum i915_mm_subclass { ____Placeholder_i915_mm_subclass } i915_mm_subclass ;
struct TYPE_3__ {int /*<<< orphan*/  (* put_pages ) (struct drm_i915_gem_object*,struct sg_table*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 struct sg_table* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sg_table*) ; 
 struct sg_table* FUNC3 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_gem_object*,struct sg_table*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct drm_i915_gem_object *obj,
				enum i915_mm_subclass subclass)
{
	struct sg_table *pages;
	int err;

	if (FUNC5(obj))
		return -EBUSY;

	FUNC1(FUNC4(&obj->bind_count));

	/* May be called by shrinker from within get_pages() (on another bo) */
	FUNC7(&obj->mm.lock, subclass);
	if (FUNC10(FUNC4(&obj->mm.pages_pin_count))) {
		err = -EBUSY;
		goto unlock;
	}

	/*
	 * ->put_pages might need to allocate memory for the bit17 swizzle
	 * array, hence protect them from being reaped by removing them from gtt
	 * lists early.
	 */
	pages = FUNC3(obj);

	/*
	 * XXX Temporary hijinx to avoid updating all backends to handle
	 * NULL pages. In the future, when we have more asynchronous
	 * get_pages backends we should be better able to handle the
	 * cancellation of the async task in a more uniform manner.
	 */
	if (!pages && !FUNC6(obj))
		pages = FUNC0(-EINVAL);

	if (!FUNC2(pages))
		obj->ops->put_pages(obj, pages);

	err = 0;
unlock:
	FUNC8(&obj->mm.lock);

	return err;
}