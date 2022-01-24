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
struct drm_i915_gem_object {int /*<<< orphan*/  cache_dirty; } ;
struct clflush {int /*<<< orphan*/  obj; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  clflush_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_gem_object*) ; 
 struct clflush* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct clflush *FUNC4(struct drm_i915_gem_object *obj)
{
	struct clflush *clflush;

	FUNC0(!obj->cache_dirty);

	clflush = FUNC3(sizeof(*clflush), GFP_KERNEL);
	if (!clflush)
		return NULL;

	FUNC1(&clflush->base, &clflush_ops);
	clflush->obj = FUNC2(obj); /* obj <-> clflush cycle */

	return clflush;
}