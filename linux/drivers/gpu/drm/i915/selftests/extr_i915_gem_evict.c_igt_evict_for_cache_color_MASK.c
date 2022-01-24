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
struct i915_vma {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * color_adjust; } ;
struct TYPE_4__ {TYPE_1__ mm; } ;
struct i915_ggtt {TYPE_2__ vm; } ;
struct drm_mm_node {int start; int size; int /*<<< orphan*/  color; } ;
struct drm_i915_private {struct i915_ggtt ggtt; } ;
typedef  struct i915_vma drm_i915_gem_object ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  I915_CACHE_L3_LLC ; 
 int /*<<< orphan*/  I915_CACHE_LLC ; 
 int I915_GTT_PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long PIN_OFFSET_FIXED ; 
 int FUNC2 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*,struct drm_mm_node*,int /*<<< orphan*/ ) ; 
 struct i915_vma* FUNC5 (struct drm_i915_private*,int) ; 
 struct i915_vma* FUNC6 (struct i915_vma*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_vma*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i915_vma*) ; 
 int /*<<< orphan*/ * mock_color_adjust ; 
 int /*<<< orphan*/  objects ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct i915_vma*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*) ; 

__attribute__((used)) static int FUNC12(void *arg)
{
	struct drm_i915_private *i915 = arg;
	struct i915_ggtt *ggtt = &i915->ggtt;
	const unsigned long flags = PIN_OFFSET_FIXED;
	struct drm_mm_node target = {
		.start = I915_GTT_PAGE_SIZE * 2,
		.size = I915_GTT_PAGE_SIZE,
		.color = I915_CACHE_LLC,
	};
	struct drm_i915_gem_object *obj;
	struct i915_vma *vma;
	FUNC1(objects);
	int err;

	/* Currently the use of color_adjust is limited to cache domains within
	 * the ggtt, and so the presence of mm.color_adjust is assumed to be
	 * i915_gtt_color_adjust throughout our driver, so using a mock color
	 * adjust will work just fine for our purposes.
	 */
	ggtt->vm.mm.color_adjust = mock_color_adjust;

	obj = FUNC5(i915, I915_GTT_PAGE_SIZE);
	if (FUNC0(obj)) {
		err = FUNC2(obj);
		goto cleanup;
	}
	FUNC7(obj, I915_CACHE_LLC);
	FUNC10(obj, &objects);

	vma = FUNC6(obj, NULL, 0, 0,
				       I915_GTT_PAGE_SIZE | flags);
	if (FUNC0(vma)) {
		FUNC9("[0]i915_gem_object_ggtt_pin failed\n");
		err = FUNC2(vma);
		goto cleanup;
	}

	obj = FUNC5(i915, I915_GTT_PAGE_SIZE);
	if (FUNC0(obj)) {
		err = FUNC2(obj);
		goto cleanup;
	}
	FUNC7(obj, I915_CACHE_LLC);
	FUNC10(obj, &objects);

	/* Neighbouring; same colour - should fit */
	vma = FUNC6(obj, NULL, 0, 0,
				       (I915_GTT_PAGE_SIZE * 2) | flags);
	if (FUNC0(vma)) {
		FUNC9("[1]i915_gem_object_ggtt_pin failed\n");
		err = FUNC2(vma);
		goto cleanup;
	}

	FUNC8(vma);

	/* Remove just the second vma */
	err = FUNC4(&ggtt->vm, &target, 0);
	if (err) {
		FUNC9("[0]i915_gem_evict_for_node returned err=%d\n", err);
		goto cleanup;
	}

	/* Attempt to remove the first *pinned* vma, by removing the (empty)
	 * neighbour -- this should fail.
	 */
	target.color = I915_CACHE_L3_LLC;

	err = FUNC4(&ggtt->vm, &target, 0);
	if (!err) {
		FUNC9("[1]i915_gem_evict_for_node returned err=%d\n", err);
		err = -EINVAL;
		goto cleanup;
	}

	err = 0;

cleanup:
	FUNC11(i915);
	FUNC3(i915, &objects);
	ggtt->vm.mm.color_adjust = NULL;
	return err;
}