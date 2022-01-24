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
struct i915_gem_context {struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {scalar_t__ phys; } ;
struct TYPE_4__ {TYPE_1__ page_sizes; } ;
struct drm_i915_gem_object {TYPE_2__ mm; } ;

/* Variables and functions */
 int FUNC0 (unsigned int const*) ; 
 scalar_t__ I915_GTT_PAGE_SIZE_2M ; 
 int /*<<< orphan*/  I915_MM_NORMAL ; 
 scalar_t__ FUNC1 (struct drm_i915_gem_object*) ; 
 int FUNC2 (struct drm_i915_gem_object*) ; 
#define  SZ_16M 132 
#define  SZ_2M 131 
#define  SZ_32M 130 
#define  SZ_4M 129 
#define  SZ_8M 128 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_gem_object*,int /*<<< orphan*/ ) ; 
 struct drm_i915_gem_object* FUNC4 (struct drm_i915_private*,unsigned int) ; 
 int FUNC5 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int FUNC9 (struct i915_gem_context*,struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC10 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

__attribute__((used)) static int FUNC12(void *arg)
{
	struct i915_gem_context *ctx = arg;
	struct drm_i915_private *i915 = ctx->i915;
	struct drm_i915_gem_object *obj;
	static const unsigned int sizes[] = {
		SZ_2M,
		SZ_4M,
		SZ_8M,
		SZ_16M,
		SZ_32M,
	};
	int i;
	int err;

	/*
	 * Sanity check that the HW uses huge pages correctly through gemfs --
	 * ensure that our writes land in the right place.
	 */

	if (!FUNC8(i915)) {
		FUNC11("missing THP support, skipping\n");
		return 0;
	}

	for (i = 0; i < FUNC0(sizes); ++i) {
		unsigned int size = sizes[i];

		obj = FUNC4(i915, size);
		if (FUNC1(obj))
			return FUNC2(obj);

		err = FUNC5(obj);
		if (err)
			goto out_put;

		if (obj->mm.page_sizes.phys < I915_GTT_PAGE_SIZE_2M) {
			FUNC11("finishing test early, gemfs unable to allocate huge-page(s) with size=%u\n",
				size);
			goto out_unpin;
		}

		err = FUNC9(ctx, obj);
		if (err) {
			FUNC10("gemfs write-huge failed with size=%u\n",
			       size);
			goto out_unpin;
		}

		FUNC7(obj);
		FUNC3(obj, I915_MM_NORMAL);
		FUNC6(obj);
	}

	return 0;

out_unpin:
	FUNC7(obj);
out_put:
	FUNC6(obj);

	return err;
}