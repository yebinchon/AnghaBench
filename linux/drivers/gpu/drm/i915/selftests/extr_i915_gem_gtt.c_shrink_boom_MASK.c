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
struct i915_vma {int dummy; } ;
struct TYPE_2__ {int probability; int interval; int /*<<< orphan*/  times; } ;
struct i915_address_space {TYPE_1__ fault_attr; } ;
struct drm_i915_private {int dummy; } ;
typedef  struct i915_vma drm_i915_gem_object ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 scalar_t__ FUNC1 (struct i915_vma*) ; 
 unsigned int PIN_OFFSET_FIXED ; 
 unsigned int PIN_USER ; 
 int FUNC2 (struct i915_vma*) ; 
 unsigned int SZ_1G ; 
 unsigned int SZ_2M ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 struct i915_vma* FUNC5 (struct drm_i915_private*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_vma*) ; 
 struct i915_vma* FUNC7 (struct i915_vma*,struct i915_address_space*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct i915_vma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct drm_i915_private *i915,
		       struct i915_address_space *vm,
		       u64 hole_start, u64 hole_end,
		       unsigned long end_time)
{
	unsigned int sizes[] = { SZ_2M, SZ_1G };
	struct drm_i915_gem_object *purge;
	struct drm_i915_gem_object *explode;
	int err;
	int i;

	/*
	 * Catch the case which shrink_hole seems to miss. The setup here
	 * requires invoking the shrinker as we do the alloc_pt/alloc_pd, while
	 * ensuring that all vma assiocated with the respective pd/pdp are
	 * unpinned at the time.
	 */

	for (i = 0; i < FUNC0(sizes); ++i) {
		unsigned int flags = PIN_USER | PIN_OFFSET_FIXED;
		unsigned int size = sizes[i];
		struct i915_vma *vma;

		purge = FUNC5(i915, size);
		if (FUNC1(purge))
			return FUNC2(purge);

		vma = FUNC7(purge, vm, NULL);
		if (FUNC1(vma)) {
			err = FUNC2(vma);
			goto err_purge;
		}

		err = FUNC8(vma, 0, 0, flags);
		if (err)
			goto err_purge;

		/* Should now be ripe for purging */
		FUNC9(vma);

		explode = FUNC5(i915, size);
		if (FUNC1(explode)) {
			err = FUNC2(explode);
			goto err_purge;
		}

		vm->fault_attr.probability = 100;
		vm->fault_attr.interval = 1;
		FUNC3(&vm->fault_attr.times, -1);

		vma = FUNC7(explode, vm, NULL);
		if (FUNC1(vma)) {
			err = FUNC2(vma);
			goto err_explode;
		}

		err = FUNC8(vma, 0, 0, flags | size);
		if (err)
			goto err_explode;

		FUNC9(vma);

		FUNC6(purge);
		FUNC6(explode);

		FUNC10(&vm->fault_attr, 0, sizeof(vm->fault_attr));
		FUNC4(i915);
	}

	return 0;

err_explode:
	FUNC6(explode);
err_purge:
	FUNC6(purge);
	FUNC10(&vm->fault_attr, 0, sizeof(vm->fault_attr));
	return err;
}