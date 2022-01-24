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
typedef  int /*<<< orphan*/  u64 ;
struct drm_i915_private {int /*<<< orphan*/  drm; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;
struct drm_i915_gem_object {int /*<<< orphan*/  cache_level; void* read_domains; void* write_domain; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  E2BIG ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct drm_i915_gem_object* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  I915_CACHE_NONE ; 
 void* I915_GEM_DOMAIN_CPU ; 
 int /*<<< orphan*/  I915_GTT_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fake_ops ; 
 struct drm_i915_gem_object* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_gem_object*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_gem_object*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_i915_gem_object *
FUNC10(struct drm_i915_private *i915, u64 size)
{
	struct drm_i915_gem_object *obj;

	FUNC1(!size);
	FUNC1(!FUNC2(size, I915_GTT_PAGE_SIZE));

	if (FUNC9(size, obj->base.size))
		return FUNC0(-E2BIG);

	obj = FUNC4();
	if (!obj)
		goto err;

	FUNC3(&i915->drm, &obj->base, size);
	FUNC5(obj, &fake_ops);

	obj->write_domain = I915_GEM_DOMAIN_CPU;
	obj->read_domains = I915_GEM_DOMAIN_CPU;
	obj->cache_level = I915_CACHE_NONE;

	/* Preallocate the "backing storage" */
	if (FUNC6(obj))
		goto err_obj;

	FUNC8(obj);
	return obj;

err_obj:
	FUNC7(obj);
err:
	return FUNC0(-ENOMEM);
}