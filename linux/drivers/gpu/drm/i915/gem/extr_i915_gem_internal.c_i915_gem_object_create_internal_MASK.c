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
struct drm_i915_private {int /*<<< orphan*/  drm; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;
struct drm_i915_gem_object {void* write_domain; void* read_domains; TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  E2BIG ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct drm_i915_gem_object* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 unsigned int I915_CACHE_LLC ; 
 unsigned int I915_CACHE_NONE ; 
 void* I915_GEM_DOMAIN_CPU ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct drm_i915_gem_object* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_gem_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  i915_gem_object_internal_ops ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_gem_object*,unsigned int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct drm_i915_gem_object *
FUNC9(struct drm_i915_private *i915,
				phys_addr_t size)
{
	struct drm_i915_gem_object *obj;
	unsigned int cache_level;

	FUNC1(!size);
	FUNC1(!FUNC3(size, PAGE_SIZE));

	if (FUNC8(size, obj->base.size))
		return FUNC0(-E2BIG);

	obj = FUNC5();
	if (!obj)
		return FUNC0(-ENOMEM);

	FUNC4(&i915->drm, &obj->base, size);
	FUNC6(obj, &i915_gem_object_internal_ops);

	obj->read_domains = I915_GEM_DOMAIN_CPU;
	obj->write_domain = I915_GEM_DOMAIN_CPU;

	cache_level = FUNC2(i915) ? I915_CACHE_LLC : I915_CACHE_NONE;
	FUNC7(obj, cache_level);

	return obj;
}