
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int crtc_mask; } ;
struct intel_shared_dpll {int on; TYPE_4__* info; int active_mask; TYPE_2__ state; } ;
struct TYPE_10__ {int crtc; } ;
struct intel_crtc_state {struct intel_shared_dpll* shared_dpll; TYPE_5__ base; } ;
struct TYPE_6__ {int dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct drm_i915_private {int dpll_lock; } ;
struct TYPE_9__ {TYPE_3__* funcs; int name; } ;
struct TYPE_8__ {int (* prepare ) (struct drm_i915_private*,struct intel_shared_dpll*) ;} ;


 int DRM_DEBUG_DRIVER (char*,int ) ;
 scalar_t__ WARN_ON (int) ;
 int assert_shared_dpll_disabled (struct drm_i915_private*,struct intel_shared_dpll*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct drm_i915_private*,struct intel_shared_dpll*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

void intel_prepare_shared_dpll(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 struct intel_shared_dpll *pll = crtc_state->shared_dpll;

 if (WARN_ON(pll == ((void*)0)))
  return;

 mutex_lock(&dev_priv->dpll_lock);
 WARN_ON(!pll->state.crtc_mask);
 if (!pll->active_mask) {
  DRM_DEBUG_DRIVER("setting up %s\n", pll->info->name);
  WARN_ON(pll->on);
  assert_shared_dpll_disabled(dev_priv, pll);

  pll->info->funcs->prepare(dev_priv, pll);
 }
 mutex_unlock(&dev_priv->dpll_lock);
}
