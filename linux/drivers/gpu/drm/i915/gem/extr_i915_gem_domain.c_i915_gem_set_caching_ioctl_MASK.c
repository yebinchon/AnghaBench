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
struct TYPE_2__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct drm_i915_gem_object {int cache_level; } ;
struct drm_i915_gem_caching {int caching; int /*<<< orphan*/  handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
typedef  enum i915_cache_level { ____Placeholder_i915_cache_level } i915_cache_level ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int I915_CACHE_LLC ; 
 int I915_CACHE_NONE ; 
 int I915_CACHE_WT ; 
#define  I915_CACHING_CACHED 130 
#define  I915_CACHING_DISPLAY 129 
#define  I915_CACHING_NONE 128 
 int /*<<< orphan*/  I915_WAIT_INTERRUPTIBLE ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 scalar_t__ FUNC3 (struct drm_i915_gem_object*) ; 
 int FUNC4 (struct drm_i915_gem_object*) ; 
 struct drm_i915_gem_object* FUNC5 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_gem_object*) ; 
 int FUNC7 (struct drm_i915_gem_object*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_gem_object*) ; 
 int FUNC9 (struct drm_i915_gem_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC12 (struct drm_device*) ; 

int FUNC13(struct drm_device *dev, void *data,
			       struct drm_file *file)
{
	struct drm_i915_private *i915 = FUNC12(dev);
	struct drm_i915_gem_caching *args = data;
	struct drm_i915_gem_object *obj;
	enum i915_cache_level level;
	int ret = 0;

	switch (args->caching) {
	case I915_CACHING_NONE:
		level = I915_CACHE_NONE;
		break;
	case I915_CACHING_CACHED:
		/*
		 * Due to a HW issue on BXT A stepping, GPU stores via a
		 * snooped mapping may leave stale data in a corresponding CPU
		 * cacheline, whereas normally such cachelines would get
		 * invalidated.
		 */
		if (!FUNC0(i915) && !FUNC1(i915))
			return -ENODEV;

		level = I915_CACHE_LLC;
		break;
	case I915_CACHING_DISPLAY:
		level = FUNC2(i915) ? I915_CACHE_WT : I915_CACHE_NONE;
		break;
	default:
		return -EINVAL;
	}

	obj = FUNC5(file, args->handle);
	if (!obj)
		return -ENOENT;

	/*
	 * The caching mode of proxy object is handled by its generator, and
	 * not allowed to be changed by userspace.
	 */
	if (FUNC3(obj)) {
		ret = -ENXIO;
		goto out;
	}

	if (obj->cache_level == level)
		goto out;

	ret = FUNC9(obj,
				   I915_WAIT_INTERRUPTIBLE,
				   MAX_SCHEDULE_TIMEOUT);
	if (ret)
		goto out;

	ret = FUNC10(&i915->drm.struct_mutex);
	if (ret)
		goto out;

	ret = FUNC4(obj);
	if (ret == 0) {
		ret = FUNC7(obj, level);
		FUNC8(obj);
	}
	FUNC11(&i915->drm.struct_mutex);

out:
	FUNC6(obj);
	return ret;
}