
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {unsigned int crtc_mask; } ;
struct intel_shared_dpll {unsigned int active_mask; int on; TYPE_5__* info; TYPE_2__ state; } ;
struct TYPE_7__ {int crtc; } ;
struct intel_crtc_state {struct intel_shared_dpll* shared_dpll; TYPE_1__ base; } ;
struct TYPE_9__ {int id; } ;
struct TYPE_12__ {TYPE_3__ base; int dev; } ;
struct intel_crtc {TYPE_6__ base; } ;
struct drm_i915_private {int dpll_lock; } ;
struct TYPE_11__ {TYPE_4__* funcs; int name; } ;
struct TYPE_10__ {int (* enable ) (struct drm_i915_private*,struct intel_shared_dpll*) ;} ;


 int DRM_DEBUG_KMS (char*,int ,...) ;
 scalar_t__ WARN_ON (int) ;
 int assert_shared_dpll_enabled (struct drm_i915_private*,struct intel_shared_dpll*) ;
 unsigned int drm_crtc_mask (TYPE_6__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct drm_i915_private*,struct intel_shared_dpll*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 struct intel_shared_dpll *pll = crtc_state->shared_dpll;
 unsigned int crtc_mask = drm_crtc_mask(&crtc->base);
 unsigned int old_mask;

 if (WARN_ON(pll == ((void*)0)))
  return;

 mutex_lock(&dev_priv->dpll_lock);
 old_mask = pll->active_mask;

 if (WARN_ON(!(pll->state.crtc_mask & crtc_mask)) ||
     WARN_ON(pll->active_mask & crtc_mask))
  goto out;

 pll->active_mask |= crtc_mask;

 DRM_DEBUG_KMS("enable %s (active %x, on? %d) for crtc %d\n",
        pll->info->name, pll->active_mask, pll->on,
        crtc->base.base.id);

 if (old_mask) {
  WARN_ON(!pll->on);
  assert_shared_dpll_enabled(dev_priv, pll);
  goto out;
 }
 WARN_ON(pll->on);

 DRM_DEBUG_KMS("enabling %s\n", pll->info->name);
 pll->info->funcs->enable(dev_priv, pll);
 pll->on = 1;

out:
 mutex_unlock(&dev_priv->dpll_lock);
}
