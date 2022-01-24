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
struct drm_i915_gem_pread {scalar_t__ size; int /*<<< orphan*/  offset; int /*<<< orphan*/  handle; int /*<<< orphan*/  data_ptr; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 int /*<<< orphan*/  I915_WAIT_INTERRUPTIBLE ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (struct drm_i915_gem_object*,struct drm_i915_gem_pread*) ; 
 struct drm_i915_gem_object* FUNC2 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_gem_object*) ; 
 int FUNC6 (struct drm_i915_gem_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct drm_i915_gem_object*,struct drm_i915_gem_pread*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_gem_object*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  u64 ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int
FUNC11(struct drm_device *dev, void *data,
		     struct drm_file *file)
{
	struct drm_i915_gem_pread *args = data;
	struct drm_i915_gem_object *obj;
	int ret;

	if (args->size == 0)
		return 0;

	if (!FUNC0(FUNC10(args->data_ptr),
		       args->size))
		return -EFAULT;

	obj = FUNC2(file, args->handle);
	if (!obj)
		return -ENOENT;

	/* Bounds check source.  */
	if (FUNC8(u64, args->offset, args->size, obj->base.size)) {
		ret = -EINVAL;
		goto out;
	}

	FUNC9(obj, args->offset, args->size);

	ret = FUNC6(obj,
				   I915_WAIT_INTERRUPTIBLE,
				   MAX_SCHEDULE_TIMEOUT);
	if (ret)
		goto out;

	ret = FUNC3(obj);
	if (ret)
		goto out;

	ret = FUNC7(obj, args);
	if (ret == -EFAULT || ret == -ENODEV)
		ret = FUNC1(obj, args);

	FUNC5(obj);
out:
	FUNC4(obj);
	return ret;
}