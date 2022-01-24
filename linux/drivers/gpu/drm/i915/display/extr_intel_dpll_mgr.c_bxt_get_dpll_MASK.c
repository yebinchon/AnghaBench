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
struct intel_shared_dpll {TYPE_3__* info; } ;
struct intel_encoder {scalar_t__ port; } ;
struct intel_crtc_state {struct intel_shared_dpll* shared_dpll; int /*<<< orphan*/  dpll_hw_state; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; TYPE_1__ base; int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_2__ base; } ;
struct intel_atomic_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_HDMI ; 
 int /*<<< orphan*/  FUNC1 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_crtc_state*) ; 
 struct intel_crtc_state* FUNC3 (struct intel_atomic_state*,struct intel_crtc*) ; 
 scalar_t__ FUNC4 (struct intel_crtc_state*) ; 
 scalar_t__ FUNC5 (struct intel_crtc_state*,int /*<<< orphan*/ ) ; 
 struct intel_shared_dpll* FUNC6 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_atomic_state*,struct intel_crtc*,struct intel_shared_dpll*,int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC9(struct intel_atomic_state *state,
			 struct intel_crtc *crtc,
			 struct intel_encoder *encoder)
{
	struct intel_crtc_state *crtc_state =
		FUNC3(state, crtc);
	struct drm_i915_private *dev_priv = FUNC8(crtc->base.dev);
	struct intel_shared_dpll *pll;
	enum intel_dpll_id id;

	if (FUNC5(crtc_state, INTEL_OUTPUT_HDMI) &&
	    !FUNC2(crtc_state))
		return false;

	if (FUNC4(crtc_state) &&
	    !FUNC1(crtc_state))
		return false;

	/* 1:1 mapping between ports and PLLs */
	id = (enum intel_dpll_id) encoder->port;
	pll = FUNC6(dev_priv, id);

	FUNC0("[CRTC:%d:%s] using pre-allocated %s\n",
		      crtc->base.base.id, crtc->base.name, pll->info->name);

	FUNC7(state, crtc,
				    pll, &crtc_state->dpll_hw_state);

	crtc_state->shared_dpll = pll;

	return true;
}