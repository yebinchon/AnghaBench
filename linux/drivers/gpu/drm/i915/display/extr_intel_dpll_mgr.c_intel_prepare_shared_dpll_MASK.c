#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  crtc_mask; } ;
struct intel_shared_dpll {int on; TYPE_4__* info; int /*<<< orphan*/  active_mask; TYPE_2__ state; } ;
struct TYPE_10__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {struct intel_shared_dpll* shared_dpll; TYPE_5__ base; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct drm_i915_private {int /*<<< orphan*/  dpll_lock; } ;
struct TYPE_9__ {TYPE_3__* funcs; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* prepare ) (struct drm_i915_private*,struct intel_shared_dpll*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,struct intel_shared_dpll*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,struct intel_shared_dpll*) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC7(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC6(crtc->base.dev);
	struct intel_shared_dpll *pll = crtc_state->shared_dpll;

	if (FUNC1(pll == NULL))
		return;

	FUNC3(&dev_priv->dpll_lock);
	FUNC1(!pll->state.crtc_mask);
	if (!pll->active_mask) {
		FUNC0("setting up %s\n", pll->info->name);
		FUNC1(pll->on);
		FUNC2(dev_priv, pll);

		pll->info->funcs->prepare(dev_priv, pll);
	}
	FUNC4(&dev_priv->dpll_lock);
}