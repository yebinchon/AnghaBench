
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ active; TYPE_1__* crtc; } ;
struct intel_crtc_state {scalar_t__ port_clock; scalar_t__ shared_dpll; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool has_bogus_dpll_config(const struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv = to_i915(crtc_state->base.crtc->dev);
 return IS_GEN(dev_priv, 6) &&
  crtc_state->base.active &&
  crtc_state->shared_dpll &&
  crtc_state->port_clock == 0;
}
