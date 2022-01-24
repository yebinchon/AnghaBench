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
struct intel_uncore {int dummy; } ;
struct intel_gt {int /*<<< orphan*/  uc; int /*<<< orphan*/  last_init_time; } ;
struct drm_i915_private {int /*<<< orphan*/  kernel_context; struct intel_gt gt; struct intel_uncore uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FORCEWAKE_ALL ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  HSW_IDICR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  LOWER_SLICE_DISABLED ; 
 int /*<<< orphan*/  LOWER_SLICE_ENABLED ; 
 int /*<<< orphan*/  MI_PREDICATE_RESULT_2 ; 
 int FUNC7 (struct intel_gt*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_gt*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_gt*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_gt*) ; 
 int FUNC12 (struct intel_gt*) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_gt*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct intel_gt*) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 

int FUNC21(struct drm_i915_private *i915)
{
	struct intel_uncore *uncore = &i915->uncore;
	struct intel_gt *gt = &i915->gt;
	int ret;

	FUNC0(!i915->kernel_context);
	ret = FUNC12(gt);
	if (ret)
		return ret;

	gt->last_init_time = FUNC20();

	/* Double layer security blanket, see i915_gem_init() */
	FUNC16(uncore, FORCEWAKE_ALL);

	if (FUNC2(i915) && FUNC4(i915) < 9)
		FUNC18(uncore, HSW_IDICR, 0, FUNC3(0xf));

	if (FUNC5(i915))
		FUNC19(uncore,
				   MI_PREDICATE_RESULT_2,
				   FUNC6(i915) ?
				   LOWER_SLICE_ENABLED : LOWER_SLICE_DISABLED);

	/* Apply the GT workarounds... */
	FUNC10(gt);
	/* ...and determine whether they are sticking. */
	FUNC13(gt, "init");

	FUNC11(gt);

	/*
	 * At least 830 can leave some of the unused rings
	 * "active" (ie. head != tail) after resume which
	 * will prevent c3 entry. Makes sure all unused rings
	 * are totally idle.
	 */
	FUNC9(gt);

	ret = FUNC7(gt);
	if (ret) {
		FUNC1("Enabling PPGTT failed (%d)\n", ret);
		goto out;
	}

	/* We can't enable contexts until all firmware is loaded */
	ret = FUNC15(&gt->uc);
	if (ret) {
		FUNC8(i915, "Enabling uc failed (%d)\n", ret);
		goto out;
	}

	FUNC14(gt);

out:
	FUNC17(uncore, FORCEWAKE_ALL);
	return ret;
}