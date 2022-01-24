#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct intel_sseu {int slice_mask; int subslice_mask; } ;
struct intel_engine_cs {struct intel_sseu sseu; } ;
struct intel_context {int dummy; } ;
typedef  struct intel_context i915_gem_context ;
struct TYPE_5__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {int /*<<< orphan*/  gt; TYPE_2__ drm; struct intel_engine_cs** engine; } ;
typedef  struct intel_context drm_i915_gem_object ;
typedef  struct intel_context drm_file ;
struct TYPE_4__ {int /*<<< orphan*/  has_slice_pg; } ;
struct TYPE_6__ {TYPE_1__ sseu; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  I915_WAIT_LOCKED ; 
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct intel_context*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC2 (struct intel_context*) ; 
 size_t RCS0 ; 
 TYPE_3__* FUNC3 (struct drm_i915_private*) ; 
 unsigned int TEST_RESET ; 
 int FUNC4 (char const*,unsigned int,struct intel_context*,struct intel_context*,struct intel_sseu) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_context*) ; 
 struct intel_context* FUNC7 (struct intel_context*,size_t) ; 
 struct intel_context* FUNC8 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_context*) ; 
 scalar_t__ FUNC10 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct intel_context*) ; 
 int /*<<< orphan*/  FUNC14 (struct intel_context*) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_context*) ; 
 struct intel_context* FUNC16 (struct drm_i915_private*,struct intel_context*) ; 
 struct intel_context* FUNC17 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC18 (struct drm_i915_private*,struct intel_context*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC22 (char*,char const*,unsigned int,int,int) ; 

__attribute__((used)) static int
FUNC23(struct drm_i915_private *i915,
	       const char *name,
	       unsigned int flags)
{
	struct intel_engine_cs *engine = i915->engine[RCS0];
	struct drm_i915_gem_object *obj;
	struct i915_gem_context *ctx;
	struct intel_context *ce;
	struct intel_sseu pg_sseu;
	struct drm_file *file;
	int ret;

	if (FUNC0(i915) < 9 || !engine)
		return 0;

	if (!FUNC3(i915)->sseu.has_slice_pg)
		return 0;

	if (FUNC5(engine->sseu.slice_mask) < 2)
		return 0;

	/*
	 * Gen11 VME friendly power-gated configuration with half enabled
	 * sub-slices.
	 */
	pg_sseu = engine->sseu;
	pg_sseu.slice_mask = 1;
	pg_sseu.subslice_mask =
		~(~0 << (FUNC5(engine->sseu.subslice_mask) / 2));

	FUNC22("SSEU subtest '%s', flags=%x, def_slices=%u, pg_slices=%u\n",
		name, flags, FUNC5(engine->sseu.slice_mask),
		FUNC5(pg_sseu.slice_mask));

	file = FUNC17(i915);
	if (FUNC1(file))
		return FUNC2(file);

	if (flags & TEST_RESET)
		FUNC11(&i915->gt);

	FUNC19(&i915->drm.struct_mutex);

	ctx = FUNC16(i915, file);
	if (FUNC1(ctx)) {
		ret = FUNC2(ctx);
		goto out_unlock;
	}
	FUNC6(ctx); /* to reset and beyond! */

	obj = FUNC8(i915, PAGE_SIZE);
	if (FUNC1(obj)) {
		ret = FUNC2(obj);
		goto out_unlock;
	}

	ce = FUNC7(ctx, RCS0);
	if (FUNC1(ce)) {
		ret = FUNC2(ce);
		goto out_put;
	}

	ret = FUNC13(ce);
	if (ret)
		goto out_context;

	/* First set the default mask. */
	ret = FUNC4(name, flags, ce, obj, engine->sseu);
	if (ret)
		goto out_fail;

	/* Then set a power-gated configuration. */
	ret = FUNC4(name, flags, ce, obj, pg_sseu);
	if (ret)
		goto out_fail;

	/* Back to defaults. */
	ret = FUNC4(name, flags, ce, obj, engine->sseu);
	if (ret)
		goto out_fail;

	/* One last power-gated configuration for the road. */
	ret = FUNC4(name, flags, ce, obj, pg_sseu);
	if (ret)
		goto out_fail;

out_fail:
	if (FUNC10(i915, I915_WAIT_LOCKED))
		ret = -EIO;

	FUNC15(ce);
out_context:
	FUNC14(ce);
out_put:
	FUNC9(obj);

out_unlock:
	FUNC20(&i915->drm.struct_mutex);

	if (flags & TEST_RESET)
		FUNC12(&i915->gt);

	FUNC18(i915, file);

	if (ret)
		FUNC21("%s: Failed with %d!\n", name, ret);

	return ret;
}