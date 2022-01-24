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
struct TYPE_3__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct TYPE_4__ {int /*<<< orphan*/  pages_pin_count; } ;
struct drm_i915_gem_object {TYPE_2__ mm; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct drm_i915_gem_object*,int /*<<< orphan*/ ) ; 
 struct drm_i915_gem_object* FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_gem_object*) ; 
 int FUNC7 (struct drm_i915_gem_object*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  i915_gem_phys_ops ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

__attribute__((used)) static int FUNC12(void *arg)
{
	struct drm_i915_private *i915 = arg;
	struct drm_i915_gem_object *obj;
	int err;

	/* Create an object and bind it to a contiguous set of physical pages,
	 * i.e. exercise the i915_gem_object_phys API.
	 */

	obj = FUNC4(i915, PAGE_SIZE);
	if (FUNC0(obj)) {
		err = FUNC1(obj);
		FUNC11("i915_gem_object_create failed, err=%d\n", err);
		goto out;
	}

	FUNC9(&i915->drm.struct_mutex);
	err = FUNC3(obj, PAGE_SIZE);
	FUNC10(&i915->drm.struct_mutex);
	if (err) {
		FUNC11("i915_gem_object_attach_phys failed, err=%d\n", err);
		goto out_obj;
	}

	if (obj->ops != &i915_gem_phys_ops) {
		FUNC11("i915_gem_object_attach_phys did not create a phys object\n");
		err = -EINVAL;
		goto out_obj;
	}

	if (!FUNC2(&obj->mm.pages_pin_count)) {
		FUNC11("i915_gem_object_attach_phys did not pin its phys pages\n");
		err = -EINVAL;
		goto out_obj;
	}

	/* Make the object dirty so that put_pages must do copy back the data */
	FUNC5(obj);
	err = FUNC7(obj, true);
	FUNC8(obj);
	if (err) {
		FUNC11("i915_gem_object_set_to_gtt_domain failed with err=%d\n",
		       err);
		goto out_obj;
	}

out_obj:
	FUNC6(obj);
out:
	return err;
}