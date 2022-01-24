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
struct drm_i915_gem_object {int read_domains; int write_domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  I915_CLFLUSH_SYNC ; 
 int I915_GEM_DOMAIN_CPU ; 
 int I915_WAIT_ALL ; 
 int I915_WAIT_INTERRUPTIBLE ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_gem_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_gem_object*,int) ; 
 int FUNC5 (struct drm_i915_gem_object*,int,int /*<<< orphan*/ ) ; 

int
FUNC6(struct drm_i915_gem_object *obj, bool write)
{
	int ret;

	FUNC2(obj);

	ret = FUNC5(obj,
				   I915_WAIT_INTERRUPTIBLE |
				   (write ? I915_WAIT_ALL : 0),
				   MAX_SCHEDULE_TIMEOUT);
	if (ret)
		return ret;

	FUNC4(obj, ~I915_GEM_DOMAIN_CPU);

	/* Flush the CPU cache if it's still invalid. */
	if ((obj->read_domains & I915_GEM_DOMAIN_CPU) == 0) {
		FUNC3(obj, I915_CLFLUSH_SYNC);
		obj->read_domains |= I915_GEM_DOMAIN_CPU;
	}

	/* It should now be out of any other write domains, and we can update
	 * the domain values for our changes.
	 */
	FUNC0(obj->write_domain & ~I915_GEM_DOMAIN_CPU);

	/* If we're writing through the CPU, then the GPU read domains will
	 * need to be invalidated at next use.
	 */
	if (write)
		FUNC1(obj);

	return 0;
}