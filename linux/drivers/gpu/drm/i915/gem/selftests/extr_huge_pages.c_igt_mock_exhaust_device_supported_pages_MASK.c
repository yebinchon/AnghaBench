#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned int sg; } ;
struct TYPE_6__ {unsigned int size; } ;
struct i915_vma {TYPE_2__ page_sizes; TYPE_1__ base; } ;
struct TYPE_9__ {struct drm_i915_private* i915; } ;
struct i915_ppgtt {TYPE_4__ vm; } ;
struct drm_i915_private {int dummy; } ;
struct drm_i915_gem_object {TYPE_2__ page_sizes; TYPE_1__ base; } ;
struct TYPE_10__ {unsigned int page_sizes; } ;
struct TYPE_8__ {unsigned int page_sizes; } ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 int FUNC1 (int) ; 
 int EINVAL ; 
 TYPE_5__* FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct i915_vma*) ; 
 int /*<<< orphan*/  PIN_USER ; 
 int FUNC4 (struct i915_vma*) ; 
 struct i915_vma* FUNC5 (struct drm_i915_private*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_vma*) ; 
 struct i915_vma* FUNC8 (struct i915_vma*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct i915_vma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct i915_vma*) ; 
 int FUNC11 (struct i915_vma*) ; 
 TYPE_3__* FUNC12 (struct drm_i915_private*) ; 
 unsigned int* page_sizes ; 
 int /*<<< orphan*/  FUNC13 (char*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC14(void *arg)
{
	struct i915_ppgtt *ppgtt = arg;
	struct drm_i915_private *i915 = ppgtt->vm.i915;
	unsigned int saved_mask = FUNC2(i915)->page_sizes;
	struct drm_i915_gem_object *obj;
	struct i915_vma *vma;
	int i, j, single;
	int err;

	/*
	 * Sanity check creating objects with every valid page support
	 * combination for our mock device.
	 */

	for (i = 1; i < FUNC1(FUNC0(page_sizes)); i++) {
		unsigned int combination = 0;

		for (j = 0; j < FUNC0(page_sizes); j++) {
			if (i & FUNC1(j))
				combination |= page_sizes[j];
		}

		FUNC12(i915)->page_sizes = combination;

		for (single = 0; single <= 1; ++single) {
			obj = FUNC5(i915, combination, !!single);
			if (FUNC3(obj)) {
				err = FUNC4(obj);
				goto out_device;
			}

			if (obj->base.size != combination) {
				FUNC13("obj->base.size=%zu, expected=%u\n",
				       obj->base.size, combination);
				err = -EINVAL;
				goto out_put;
			}

			vma = FUNC8(obj, &ppgtt->vm, NULL);
			if (FUNC3(vma)) {
				err = FUNC4(vma);
				goto out_put;
			}

			err = FUNC9(vma, 0, 0, PIN_USER);
			if (err)
				goto out_close;

			err = FUNC11(vma);

			if (vma->page_sizes.sg != combination) {
				FUNC13("page_sizes.sg=%u, expected=%u\n",
				       vma->page_sizes.sg, combination);
				err = -EINVAL;
			}

			FUNC10(vma);
			FUNC7(vma);

			FUNC6(obj);

			if (err)
				goto out_device;
		}
	}

	goto out_device;

out_close:
	FUNC7(vma);
out_put:
	FUNC6(obj);
out_device:
	FUNC12(i915)->page_sizes = saved_mask;

	return err;
}