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
typedef  int u64 ;
struct drm_i915_private {int /*<<< orphan*/  drm; } ;
struct TYPE_3__ {unsigned int page_mask; } ;
struct TYPE_4__ {int /*<<< orphan*/  size; } ;
struct drm_i915_gem_object {TYPE_1__ mm; int /*<<< orphan*/  cache_level; void* read_domains; void* write_domain; TYPE_2__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E2BIG ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct drm_i915_gem_object* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  I915_CACHE_NONE ; 
 void* I915_GEM_DOMAIN_CPU ; 
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  huge_page_ops ; 
 struct drm_i915_gem_object* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_gem_object*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_i915_gem_object *
FUNC9(struct drm_i915_private *i915,
		  u64 size,
		  unsigned int page_mask)
{
	struct drm_i915_gem_object *obj;

	FUNC2(!size);
	FUNC2(!FUNC3(size, FUNC0(FUNC4(page_mask))));

	if (size >> PAGE_SHIFT > INT_MAX)
		return FUNC1(-E2BIG);

	if (FUNC8(size, obj->base.size))
		return FUNC1(-E2BIG);

	obj = FUNC6();
	if (!obj)
		return FUNC1(-ENOMEM);

	FUNC5(&i915->drm, &obj->base, size);
	FUNC7(obj, &huge_page_ops);

	obj->write_domain = I915_GEM_DOMAIN_CPU;
	obj->read_domains = I915_GEM_DOMAIN_CPU;
	obj->cache_level = I915_CACHE_NONE;

	obj->mm.page_mask = page_mask;

	return obj;
}