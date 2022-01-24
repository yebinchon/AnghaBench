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
typedef  int u32 ;
struct intel_guc {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {struct drm_i915_private* i915; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int GUC_FORCEWAKE_MEDIA ; 
 int GUC_FORCEWAKE_RENDER ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int INTEL_GUC_ACTION_SAMPLE_FORCEWAKE ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 TYPE_1__* FUNC3 (struct intel_guc*) ; 
 int FUNC4 (struct intel_guc*,int*,int /*<<< orphan*/ ) ; 

int FUNC5(struct intel_guc *guc)
{
	struct drm_i915_private *dev_priv = FUNC3(guc)->i915;
	u32 action[2];

	action[0] = INTEL_GUC_ACTION_SAMPLE_FORCEWAKE;
	/* WaRsDisableCoarsePowerGating:skl,cnl */
	if (!FUNC1(dev_priv) || FUNC2(dev_priv))
		action[1] = 0;
	else
		/* bit 0 and 1 are for Render and Media domain separately */
		action[1] = GUC_FORCEWAKE_RENDER | GUC_FORCEWAKE_MEDIA;

	return FUNC4(guc, action, FUNC0(action));
}