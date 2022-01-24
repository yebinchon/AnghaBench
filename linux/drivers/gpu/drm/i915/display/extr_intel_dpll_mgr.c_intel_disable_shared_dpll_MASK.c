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
struct intel_shared_dpll {unsigned int active_mask; int on; TYPE_4__* info; } ;
struct TYPE_6__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {struct intel_shared_dpll* shared_dpll; TYPE_1__ base; } ;
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
struct TYPE_10__ {TYPE_2__ base; int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_5__ base; } ;
struct drm_i915_private {int /*<<< orphan*/  dpll_lock; } ;
struct TYPE_9__ {TYPE_3__* funcs; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* disable ) (struct drm_i915_private*,struct intel_shared_dpll*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,struct intel_shared_dpll*) ; 
 unsigned int FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*,struct intel_shared_dpll*) ; 
 struct drm_i915_private* FUNC8 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC9(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC8(crtc->base.dev);
	struct intel_shared_dpll *pll = crtc_state->shared_dpll;
	unsigned int crtc_mask = FUNC4(&crtc->base);

	/* PCH only available on ILK+ */
	if (FUNC1(dev_priv) < 5)
		return;

	if (pll == NULL)
		return;

	FUNC5(&dev_priv->dpll_lock);
	if (FUNC2(!(pll->active_mask & crtc_mask)))
		goto out;

	FUNC0("disable %s (active %x, on? %d) for crtc %d\n",
		      pll->info->name, pll->active_mask, pll->on,
		      crtc->base.base.id);

	FUNC3(dev_priv, pll);
	FUNC2(!pll->on);

	pll->active_mask &= ~crtc_mask;
	if (pll->active_mask)
		goto out;

	FUNC0("disabling %s\n", pll->info->name);
	pll->info->funcs->disable(dev_priv, pll);
	pll->on = false;

out:
	FUNC6(&dev_priv->dpll_lock);
}