#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned int crtc_mask; } ;
struct intel_shared_dpll {unsigned int active_mask; int on; TYPE_5__* info; TYPE_2__ state; } ;
struct TYPE_7__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {struct intel_shared_dpll* shared_dpll; TYPE_1__ base; } ;
struct TYPE_9__ {int /*<<< orphan*/  id; } ;
struct TYPE_12__ {TYPE_3__ base; int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_6__ base; } ;
struct drm_i915_private {int /*<<< orphan*/  dpll_lock; } ;
struct TYPE_11__ {TYPE_4__* funcs; int /*<<< orphan*/  name; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* enable ) (struct drm_i915_private*,struct intel_shared_dpll*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,struct intel_shared_dpll*) ; 
 unsigned int FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,struct intel_shared_dpll*) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC8(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC7(crtc->base.dev);
	struct intel_shared_dpll *pll = crtc_state->shared_dpll;
	unsigned int crtc_mask = FUNC3(&crtc->base);
	unsigned int old_mask;

	if (FUNC1(pll == NULL))
		return;

	FUNC4(&dev_priv->dpll_lock);
	old_mask = pll->active_mask;

	if (FUNC1(!(pll->state.crtc_mask & crtc_mask)) ||
	    FUNC1(pll->active_mask & crtc_mask))
		goto out;

	pll->active_mask |= crtc_mask;

	FUNC0("enable %s (active %x, on? %d) for crtc %d\n",
		      pll->info->name, pll->active_mask, pll->on,
		      crtc->base.base.id);

	if (old_mask) {
		FUNC1(!pll->on);
		FUNC2(dev_priv, pll);
		goto out;
	}
	FUNC1(pll->on);

	FUNC0("enabling %s\n", pll->info->name);
	pll->info->funcs->enable(dev_priv, pll);
	pll->on = true;

out:
	FUNC5(&dev_priv->dpll_lock);
}