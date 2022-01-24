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
typedef  int u64 ;
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
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_SHIFT ; 
 scalar_t__ UINT_MAX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  fake_ops ; 
 int /*<<< orphan*/  fake_ops_single ; 
 struct drm_i915_gem_object* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_gem_object*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_i915_gem_object *
FUNC7(struct drm_i915_private *i915, u64 size, bool single)
{
	struct drm_i915_gem_object *obj;

	FUNC1(!size);
	FUNC1(!FUNC2(size, I915_GTT_PAGE_SIZE));

	if (size >> PAGE_SHIFT > UINT_MAX)
		return FUNC0(-E2BIG);

	if (FUNC6(size, obj->base.size))
		return FUNC0(-E2BIG);

	obj = FUNC4();
	if (!obj)
		return FUNC0(-ENOMEM);

	FUNC3(&i915->drm, &obj->base, size);

	if (single)
		FUNC5(obj, &fake_ops_single);
	else
		FUNC5(obj, &fake_ops);

	obj->write_domain = I915_GEM_DOMAIN_CPU;
	obj->read_domains = I915_GEM_DOMAIN_CPU;
	obj->cache_level = I915_CACHE_NONE;

	return obj;
}