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
struct TYPE_4__ {int pos; int size; scalar_t__ enabled; } ;
struct TYPE_5__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {TYPE_1__ pch_pfit; TYPE_2__ base; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int pipe; TYPE_3__ base; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int PF_ENABLE ; 
 int PF_FILTER_MED_3x3 ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC8(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC7(crtc->base.dev);
	int pipe = crtc->pipe;

	if (crtc_state->pch_pfit.enabled) {
		/* Force use of hard-coded filter coefficients
		 * as some pre-programmed values are broken,
		 * e.g. x201.
		 */
		if (FUNC2(dev_priv) || FUNC1(dev_priv))
			FUNC0(FUNC3(pipe), PF_ENABLE | PF_FILTER_MED_3x3 |
						 FUNC4(pipe));
		else
			FUNC0(FUNC3(pipe), PF_ENABLE | PF_FILTER_MED_3x3);
		FUNC0(FUNC5(pipe), crtc_state->pch_pfit.pos);
		FUNC0(FUNC6(pipe), crtc_state->pch_pfit.size);
	}
}