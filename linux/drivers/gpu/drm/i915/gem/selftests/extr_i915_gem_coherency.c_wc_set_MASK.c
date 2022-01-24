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
typedef  int /*<<< orphan*/  u32 ;
struct drm_i915_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I915_MAP_WC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/ * FUNC3 (struct drm_i915_gem_object*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_i915_gem_object*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_gem_object*) ; 

__attribute__((used)) static int FUNC7(struct drm_i915_gem_object *obj,
		  unsigned long offset,
		  u32 v)
{
	u32 *map;
	int err;

	FUNC2(obj);
	err = FUNC4(obj, true);
	FUNC5(obj);
	if (err)
		return err;

	map = FUNC3(obj, I915_MAP_WC);
	if (FUNC0(map))
		return FUNC1(map);

	map[offset / sizeof(*map)] = v;
	FUNC6(obj);

	return 0;
}