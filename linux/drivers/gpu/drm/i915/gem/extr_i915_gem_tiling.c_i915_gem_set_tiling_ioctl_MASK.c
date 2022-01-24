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
struct drm_i915_gem_set_tiling {scalar_t__ tiling_mode; scalar_t__ swizzle_mode; scalar_t__ stride; int /*<<< orphan*/  handle; } ;
struct drm_i915_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_3__ {scalar_t__ bit_6_swizzle_x; scalar_t__ bit_6_swizzle_y; } ;
struct TYPE_4__ {TYPE_1__ mm; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENXIO ; 
 scalar_t__ I915_BIT_6_SWIZZLE_9 ; 
 scalar_t__ I915_BIT_6_SWIZZLE_9_10 ; 
 scalar_t__ I915_BIT_6_SWIZZLE_9_10_17 ; 
 scalar_t__ I915_BIT_6_SWIZZLE_9_17 ; 
 void* I915_BIT_6_SWIZZLE_NONE ; 
 scalar_t__ I915_BIT_6_SWIZZLE_UNKNOWN ; 
 scalar_t__ I915_TILING_NONE ; 
 scalar_t__ I915_TILING_X ; 
 scalar_t__ FUNC0 (struct drm_i915_gem_object*) ; 
 scalar_t__ FUNC1 (struct drm_i915_gem_object*) ; 
 scalar_t__ FUNC2 (struct drm_i915_gem_object*) ; 
 struct drm_i915_gem_object* FUNC3 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_gem_object*) ; 
 int FUNC5 (struct drm_i915_gem_object*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_gem_object*,scalar_t__,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (struct drm_device*) ; 

int
FUNC10(struct drm_device *dev, void *data,
			  struct drm_file *file)
{
	struct drm_i915_gem_set_tiling *args = data;
	struct drm_i915_gem_object *obj;
	int err;

	obj = FUNC3(file, args->handle);
	if (!obj)
		return -ENOENT;

	/*
	 * The tiling mode of proxy objects is handled by its generator, and
	 * not allowed to be changed by userspace.
	 */
	if (FUNC2(obj)) {
		err = -ENXIO;
		goto err;
	}

	if (!FUNC6(obj, args->tiling_mode, args->stride)) {
		err = -EINVAL;
		goto err;
	}

	if (args->tiling_mode == I915_TILING_NONE) {
		args->swizzle_mode = I915_BIT_6_SWIZZLE_NONE;
		args->stride = 0;
	} else {
		if (args->tiling_mode == I915_TILING_X)
			args->swizzle_mode = FUNC9(dev)->mm.bit_6_swizzle_x;
		else
			args->swizzle_mode = FUNC9(dev)->mm.bit_6_swizzle_y;

		/* Hide bit 17 swizzling from the user.  This prevents old Mesa
		 * from aborting the application on sw fallbacks to bit 17,
		 * and we use the pread/pwrite bit17 paths to swizzle for it.
		 * If there was a user that was relying on the swizzle
		 * information for drm_intel_bo_map()ed reads/writes this would
		 * break it, but we don't have any of those.
		 */
		if (args->swizzle_mode == I915_BIT_6_SWIZZLE_9_17)
			args->swizzle_mode = I915_BIT_6_SWIZZLE_9;
		if (args->swizzle_mode == I915_BIT_6_SWIZZLE_9_10_17)
			args->swizzle_mode = I915_BIT_6_SWIZZLE_9_10;

		/* If we can't handle the swizzling, make it untiled. */
		if (args->swizzle_mode == I915_BIT_6_SWIZZLE_UNKNOWN) {
			args->tiling_mode = I915_TILING_NONE;
			args->swizzle_mode = I915_BIT_6_SWIZZLE_NONE;
			args->stride = 0;
		}
	}

	err = FUNC7(&dev->struct_mutex);
	if (err)
		goto err;

	err = FUNC5(obj, args->tiling_mode, args->stride);
	FUNC8(&dev->struct_mutex);

	/* We have to maintain this existing ABI... */
	args->stride = FUNC0(obj);
	args->tiling_mode = FUNC1(obj);

err:
	FUNC4(obj);
	return err;
}