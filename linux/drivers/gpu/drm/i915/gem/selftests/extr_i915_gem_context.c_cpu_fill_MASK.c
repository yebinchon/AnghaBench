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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct drm_i915_gem_object {int read_domains; scalar_t__ write_domain; TYPE_1__ base; } ;

/* Variables and functions */
 unsigned int DW_PER_PAGE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int I915_GEM_DOMAIN_CPU ; 
 int I915_GEM_DOMAIN_GTT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_gem_object*,unsigned int) ; 
 int FUNC4 (struct drm_i915_gem_object*,unsigned int*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC7 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct drm_i915_gem_object *obj, u32 value)
{
	const bool has_llc = FUNC0(FUNC8(obj->base.dev));
	unsigned int n, m, need_flush;
	int err;

	err = FUNC4(obj, &need_flush);
	if (err)
		return err;

	for (n = 0; n < FUNC7(obj); n++) {
		u32 *map;

		map = FUNC5(FUNC3(obj, n));
		for (m = 0; m < DW_PER_PAGE; m++)
			map[m] = value;
		if (!has_llc)
			FUNC1(map, PAGE_SIZE);
		FUNC6(map);
	}

	FUNC2(obj);
	obj->read_domains = I915_GEM_DOMAIN_GTT | I915_GEM_DOMAIN_CPU;
	obj->write_domain = 0;
	return 0;
}