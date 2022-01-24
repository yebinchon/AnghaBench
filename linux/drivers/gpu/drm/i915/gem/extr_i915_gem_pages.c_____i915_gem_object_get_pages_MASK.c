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
struct TYPE_3__ {scalar_t__ madv; } ;
struct drm_i915_gem_object {TYPE_2__* ops; TYPE_1__ mm; } ;
struct TYPE_4__ {int (* get_pages ) (struct drm_i915_gem_object*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EFAULT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ I915_MADV_WILLNEED ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_gem_object*) ; 
 int FUNC3 (struct drm_i915_gem_object*) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct drm_i915_gem_object *obj)
{
	int err;

	if (FUNC4(obj->mm.madv != I915_MADV_WILLNEED)) {
		FUNC0("Attempting to obtain a purgeable object\n");
		return -EFAULT;
	}

	err = obj->ops->get_pages(obj);
	FUNC1(!err && !FUNC2(obj));

	return err;
}