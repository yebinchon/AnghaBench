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
struct TYPE_2__ {int dirty; } ;
struct drm_i915_gem_object {int cache_coherent; int read_domains; TYPE_1__ mm; int /*<<< orphan*/  frontbuffer; int /*<<< orphan*/  cache_dirty; } ;

/* Variables and functions */
 unsigned int CLFLUSH_AFTER ; 
 unsigned int CLFLUSH_BEFORE ; 
 int ENODEV ; 
 int I915_BO_CACHE_COHERENT_FOR_WRITE ; 
 int I915_GEM_DOMAIN_CPU ; 
 int I915_WAIT_ALL ; 
 int I915_WAIT_INTERRUPTIBLE ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  ORIGIN_CPU ; 
 int /*<<< orphan*/  X86_FEATURE_CLFLUSH ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_gem_object*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_gem_object*) ; 
 int FUNC2 (struct drm_i915_gem_object*) ; 
 int FUNC3 (struct drm_i915_gem_object*) ; 
 int FUNC4 (struct drm_i915_gem_object*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_gem_object*) ; 
 int FUNC7 (struct drm_i915_gem_object*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct drm_i915_gem_object *obj,
				  unsigned int *needs_clflush)
{
	int ret;

	*needs_clflush = 0;
	if (!FUNC1(obj))
		return -ENODEV;

	ret = FUNC2(obj);
	if (ret)
		return ret;

	ret = FUNC7(obj,
				   I915_WAIT_INTERRUPTIBLE |
				   I915_WAIT_ALL,
				   MAX_SCHEDULE_TIMEOUT);
	if (ret)
		goto err_unlock;

	ret = FUNC3(obj);
	if (ret)
		goto err_unlock;

	if (obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_WRITE ||
	    !FUNC9(X86_FEATURE_CLFLUSH)) {
		ret = FUNC4(obj, true);
		if (ret)
			goto err_unpin;
		else
			goto out;
	}

	FUNC0(obj, ~I915_GEM_DOMAIN_CPU);

	/* If we're not in the cpu write domain, set ourself into the
	 * gtt write domain and manually flush cachelines (as required).
	 * This optimizes for the case when the gpu will use the data
	 * right away and we therefore have to clflush anyway.
	 */
	if (!obj->cache_dirty) {
		*needs_clflush |= CLFLUSH_AFTER;

		/*
		 * Same trick applies to invalidate partially written
		 * cachelines read before writing.
		 */
		if (!(obj->read_domains & I915_GEM_DOMAIN_CPU))
			*needs_clflush |= CLFLUSH_BEFORE;
	}

out:
	FUNC8(obj->frontbuffer, ORIGIN_CPU);
	obj->mm.dirty = true;
	/* return with the pages pinned */
	return 0;

err_unpin:
	FUNC6(obj);
err_unlock:
	FUNC5(obj);
	return ret;
}