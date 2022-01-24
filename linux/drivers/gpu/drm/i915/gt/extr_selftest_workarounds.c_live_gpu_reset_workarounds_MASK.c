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
struct wa_lists {int dummy; } ;
struct i915_gem_context {int dummy; } ;
struct drm_i915_private {int /*<<< orphan*/  gt; int /*<<< orphan*/  runtime_pm; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_ENGINES ; 
 int ESRCH ; 
 scalar_t__ FUNC0 (struct i915_gem_context*) ; 
 int FUNC1 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct i915_gem_context* FUNC10 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*,struct wa_lists*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_i915_private*,struct wa_lists*) ; 
 int FUNC15 (struct i915_gem_context*,struct wa_lists*,char*) ; 

__attribute__((used)) static int
FUNC16(void *arg)
{
	struct drm_i915_private *i915 = arg;
	struct i915_gem_context *ctx;
	intel_wakeref_t wakeref;
	struct wa_lists lists;
	bool ok;

	if (!FUNC7(i915))
		return 0;

	ctx = FUNC10(i915);
	if (FUNC0(ctx))
		return FUNC1(ctx);

	FUNC2(ctx);

	FUNC12("Verifying after GPU reset...\n");

	FUNC4(&i915->gt);
	wakeref = FUNC8(&i915->runtime_pm);

	FUNC14(i915, &lists);

	ok = FUNC15(ctx, &lists, "before reset");
	if (!ok)
		goto out;

	FUNC6(&i915->gt, ALL_ENGINES, "live_workarounds");

	ok = FUNC15(ctx, &lists, "after reset");

out:
	FUNC3(ctx);
	FUNC11(ctx);
	FUNC13(i915, &lists);
	FUNC9(&i915->runtime_pm, wakeref);
	FUNC5(&i915->gt);

	return ok ? 0 : -ESRCH;
}