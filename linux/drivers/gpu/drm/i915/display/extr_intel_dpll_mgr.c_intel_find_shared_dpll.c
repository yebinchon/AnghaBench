
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_shared_dpll_state {scalar_t__ crtc_mask; int hw_state; } ;
struct intel_shared_dpll {TYPE_3__* info; int active_mask; } ;
struct intel_dpll_hw_state {int dummy; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {int name; TYPE_1__ base; int dev; } ;
struct intel_crtc {TYPE_2__ base; } ;
struct intel_atomic_state {int base; } ;
struct drm_i915_private {struct intel_shared_dpll* shared_dplls; } ;
typedef enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;
struct TYPE_6__ {int name; } ;


 int DRM_DEBUG_KMS (char*,int ,int ,int ,...) ;
 struct intel_shared_dpll_state* intel_atomic_get_shared_dpll_state (int *) ;
 scalar_t__ memcmp (struct intel_dpll_hw_state const*,int *,int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static struct intel_shared_dpll *
intel_find_shared_dpll(struct intel_atomic_state *state,
         const struct intel_crtc *crtc,
         const struct intel_dpll_hw_state *pll_state,
         enum intel_dpll_id range_min,
         enum intel_dpll_id range_max)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 struct intel_shared_dpll *pll, *unused_pll = ((void*)0);
 struct intel_shared_dpll_state *shared_dpll;
 enum intel_dpll_id i;

 shared_dpll = intel_atomic_get_shared_dpll_state(&state->base);

 for (i = range_min; i <= range_max; i++) {
  pll = &dev_priv->shared_dplls[i];


  if (shared_dpll[i].crtc_mask == 0) {
   if (!unused_pll)
    unused_pll = pll;
   continue;
  }

  if (memcmp(pll_state,
      &shared_dpll[i].hw_state,
      sizeof(*pll_state)) == 0) {
   DRM_DEBUG_KMS("[CRTC:%d:%s] sharing existing %s (crtc mask 0x%08x, active %x)\n",
          crtc->base.base.id, crtc->base.name,
          pll->info->name,
          shared_dpll[i].crtc_mask,
          pll->active_mask);
   return pll;
  }
 }


 if (unused_pll) {
  DRM_DEBUG_KMS("[CRTC:%d:%s] allocated %s\n",
         crtc->base.base.id, crtc->base.name,
         unused_pll->info->name);
  return unused_pll;
 }

 return ((void*)0);
}
