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
struct drm_i915_gem_object {int cache_coherent; int read_domains; int /*<<< orphan*/  cache_dirty; } ;

/* Variables and functions */
 unsigned int CLFLUSH_BEFORE ; 
 int ENODEV ; 
 int I915_BO_CACHE_COHERENT_FOR_READ ; 
 int I915_GEM_DOMAIN_CPU ; 
 int /*<<< orphan*/  I915_WAIT_INTERRUPTIBLE ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  X86_FEATURE_CLFLUSH ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_gem_object*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_gem_object*) ; 
 int FUNC2 (struct drm_i915_gem_object*) ; 
 int FUNC3 (struct drm_i915_gem_object*) ; 
 int FUNC4 (struct drm_i915_gem_object*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_gem_object*) ; 
 int FUNC7 (struct drm_i915_gem_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct drm_i915_gem_object *obj,
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
				   I915_WAIT_INTERRUPTIBLE,
				   MAX_SCHEDULE_TIMEOUT);
	if (ret)
		goto err_unlock;

	ret = FUNC3(obj);
	if (ret)
		goto err_unlock;

	if (obj->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ ||
	    !FUNC8(X86_FEATURE_CLFLUSH)) {
		ret = FUNC4(obj, false);
		if (ret)
			goto err_unpin;
		else
			goto out;
	}

	FUNC0(obj, ~I915_GEM_DOMAIN_CPU);

	/* If we're not in the cpu read domain, set ourself into the gtt
	 * read domain and manually flush cachelines (if required). This
	 * optimizes for the case when the gpu will dirty the data
	 * anyway again before the next pread happens.
	 */
	if (!obj->cache_dirty &&
	    !(obj->read_domains & I915_GEM_DOMAIN_CPU))
		*needs_clflush = CLFLUSH_BEFORE;

out:
	/* return with the pages pinned */
	return 0;

err_unpin:
	FUNC6(obj);
err_unlock:
	FUNC5(obj);
	return ret;
}