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
typedef  void* u32 ;
struct TYPE_3__ {void* fp1; void* fp0; } ;
struct dpll {int dummy; } ;
struct intel_crtc_state {TYPE_1__ dpll_hw_state; struct dpll dpll; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTEL_OUTPUT_LVDS ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 void* FUNC1 (struct dpll*) ; 
 scalar_t__ FUNC2 (struct intel_crtc_state*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct dpll*) ; 
 struct drm_i915_private* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct intel_crtc *crtc,
				     struct intel_crtc_state *crtc_state,
				     struct dpll *reduced_clock)
{
	struct drm_i915_private *dev_priv = FUNC4(crtc->base.dev);
	u32 fp, fp2 = 0;

	if (FUNC0(dev_priv)) {
		fp = FUNC3(&crtc_state->dpll);
		if (reduced_clock)
			fp2 = FUNC3(reduced_clock);
	} else {
		fp = FUNC1(&crtc_state->dpll);
		if (reduced_clock)
			fp2 = FUNC1(reduced_clock);
	}

	crtc_state->dpll_hw_state.fp0 = fp;

	if (FUNC2(crtc_state, INTEL_OUTPUT_LVDS) &&
	    reduced_clock) {
		crtc_state->dpll_hw_state.fp1 = fp2;
	} else {
		crtc_state->dpll_hw_state.fp1 = fp;
	}
}