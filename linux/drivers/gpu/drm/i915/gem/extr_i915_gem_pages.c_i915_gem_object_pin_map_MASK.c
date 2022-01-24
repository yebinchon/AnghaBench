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
struct TYPE_2__ {int /*<<< orphan*/  pages_pin_count; int /*<<< orphan*/  lock; int /*<<< orphan*/ * mapping; } ;
struct drm_i915_gem_object {TYPE_1__ mm; } ;
typedef  enum i915_map_type { ____Placeholder_i915_map_type } i915_map_type ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int ENXIO ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int I915_MAP_OVERRIDE ; 
 int FUNC2 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_gem_object*) ; 
 int FUNC7 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_gem_object*) ; 
 void* FUNC9 (struct drm_i915_gem_object*,int) ; 
 scalar_t__ FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (void*,int) ; 
 void* FUNC16 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (void*) ; 

void *FUNC20(struct drm_i915_gem_object *obj,
			      enum i915_map_type type)
{
	enum i915_map_type has_type;
	bool pinned;
	void *ptr;
	int err;

	if (FUNC18(!FUNC8(obj)))
		return FUNC0(-ENXIO);

	err = FUNC13(&obj->mm.lock);
	if (err)
		return FUNC0(err);

	pinned = !(type & I915_MAP_OVERRIDE);
	type &= ~I915_MAP_OVERRIDE;

	if (!FUNC5(&obj->mm.pages_pin_count)) {
		if (FUNC18(!FUNC6(obj))) {
			FUNC1(FUNC7(obj));

			err = FUNC2(obj);
			if (err)
				goto err_unlock;

			FUNC17();
		}
		FUNC4(&obj->mm.pages_pin_count);
		pinned = false;
	}
	FUNC1(!FUNC6(obj));

	ptr = FUNC16(obj->mm.mapping, &has_type);
	if (ptr && has_type != type) {
		if (pinned) {
			err = -EBUSY;
			goto err_unpin;
		}

		if (FUNC10(ptr))
			FUNC19(ptr);
		else
			FUNC12(FUNC11(ptr));

		ptr = obj->mm.mapping = NULL;
	}

	if (!ptr) {
		ptr = FUNC9(obj, type);
		if (!ptr) {
			err = -ENOMEM;
			goto err_unpin;
		}

		obj->mm.mapping = FUNC15(ptr, type);
	}

out_unlock:
	FUNC14(&obj->mm.lock);
	return ptr;

err_unpin:
	FUNC3(&obj->mm.pages_pin_count);
err_unlock:
	ptr = FUNC0(err);
	goto out_unlock;
}