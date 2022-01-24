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
struct i915_ggtt {int /*<<< orphan*/  vm; } ;
struct drm_mm_node {int size; int /*<<< orphan*/  start; } ;
struct drm_i915_private {struct i915_ggtt ggtt; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct drm_mm_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  objects ; 
 int FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 

__attribute__((used)) static int FUNC6(void *arg)
{
	struct drm_i915_private *i915 = arg;
	struct i915_ggtt *ggtt = &i915->ggtt;
	struct drm_mm_node target = {
		.start = 0,
		.size = 4096,
	};
	FUNC0(objects);
	int err;

	/* Fill the GGTT with pinned objects and try to evict a range. */

	err = FUNC3(i915, &objects);
	if (err)
		goto cleanup;

	/* Everything is pinned, nothing should happen */
	err = FUNC2(&ggtt->vm, &target, 0);
	if (err != -ENOSPC) {
		FUNC4("i915_gem_evict_for_node on a full GGTT returned err=%d\n",
		       err);
		goto cleanup;
	}

	FUNC5(i915);

	/* Everything is unpinned, we should be able to evict the node */
	err = FUNC2(&ggtt->vm, &target, 0);
	if (err) {
		FUNC4("i915_gem_evict_for_node returned err=%d\n",
		       err);
		goto cleanup;
	}

cleanup:
	FUNC1(i915, &objects);
	return err;
}