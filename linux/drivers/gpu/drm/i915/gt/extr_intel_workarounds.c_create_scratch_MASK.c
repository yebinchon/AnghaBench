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
struct i915_vma {int dummy; } ;
struct i915_address_space {int /*<<< orphan*/  i915; } ;
typedef  struct i915_vma drm_i915_gem_object ;

/* Variables and functions */
 struct i915_vma* FUNC0 (struct i915_vma*) ; 
 struct i915_vma* FUNC1 (int) ; 
 int /*<<< orphan*/  I915_CACHE_LLC ; 
 scalar_t__ FUNC2 (struct i915_vma*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PIN_GLOBAL ; 
 int /*<<< orphan*/  PIN_USER ; 
 int FUNC3 (struct i915_vma*) ; 
 struct i915_vma* FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_vma*,int /*<<< orphan*/ ) ; 
 struct i915_vma* FUNC7 (struct i915_vma*,struct i915_address_space*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct i915_vma*) ; 
 int FUNC9 (struct i915_vma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC10 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct i915_vma *
FUNC11(struct i915_address_space *vm, int count)
{
	struct drm_i915_gem_object *obj;
	struct i915_vma *vma;
	unsigned int size;
	int err;

	size = FUNC10(count * sizeof(u32), PAGE_SIZE);
	obj = FUNC4(vm->i915, size);
	if (FUNC2(obj))
		return FUNC0(obj);

	FUNC6(obj, I915_CACHE_LLC);

	vma = FUNC7(obj, vm, NULL);
	if (FUNC2(vma)) {
		err = FUNC3(vma);
		goto err_obj;
	}

	err = FUNC9(vma, 0, 0,
			   FUNC8(vma) ? PIN_GLOBAL : PIN_USER);
	if (err)
		goto err_obj;

	return vma;

err_obj:
	FUNC5(obj);
	return FUNC1(err);
}