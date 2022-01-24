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
struct intel_uc {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct TYPE_6__ {int enable_guc; } ;
struct TYPE_5__ {struct drm_i915_private* i915; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENABLE_GUC_LOAD_HUC ; 
 int ENABLE_GUC_SUBMISSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,char*) ; 
 TYPE_3__ i915_modparams ; 
 int /*<<< orphan*/  FUNC3 (struct intel_uc*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_uc*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_uc*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_uc*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_uc*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_uc*) ; 
 TYPE_2__* FUNC9 (struct intel_uc*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct intel_uc *uc)
{
	struct drm_i915_private *i915 = FUNC9(uc)->i915;

	FUNC0(i915->drm.dev,
			     "enable_guc=%d (guc:%s submission:%s huc:%s)\n",
			     i915_modparams.enable_guc,
			     FUNC10(FUNC6(uc)),
			     FUNC10(FUNC7(uc)),
			     FUNC10(FUNC8(uc)));

	if (i915_modparams.enable_guc == -1)
		return;

	if (i915_modparams.enable_guc == 0) {
		FUNC1(FUNC6(uc));
		FUNC1(FUNC7(uc));
		FUNC1(FUNC8(uc));
		return;
	}

	if (!FUNC3(uc))
		FUNC2(i915->drm.dev,
			 "Incompatible option enable_guc=%d - %s\n",
			 i915_modparams.enable_guc, "GuC is not supported!");

	if (i915_modparams.enable_guc & ENABLE_GUC_LOAD_HUC &&
	    !FUNC5(uc))
		FUNC2(i915->drm.dev,
			 "Incompatible option enable_guc=%d - %s\n",
			 i915_modparams.enable_guc, "HuC is not supported!");

	if (i915_modparams.enable_guc & ENABLE_GUC_SUBMISSION &&
	    !FUNC4(uc))
		FUNC2(i915->drm.dev,
			 "Incompatible option enable_guc=%d - %s\n",
			 i915_modparams.enable_guc, "GuC submission is N/A");

	if (i915_modparams.enable_guc & ~(ENABLE_GUC_SUBMISSION |
					  ENABLE_GUC_LOAD_HUC))
		FUNC2(i915->drm.dev,
			 "Incompatible option enable_guc=%d - %s\n",
			 i915_modparams.enable_guc, "undocumented flag");
}