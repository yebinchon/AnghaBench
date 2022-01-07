
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int crtc; } ;
struct intel_crtc_state {int fdi_lanes; TYPE_1__ base; } ;
struct TYPE_4__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;


 int BUG () ;



 int cpt_set_fdi_bc_bifurcation (struct drm_i915_private*,int) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void ivybridge_update_fdi_bc_bifurcation(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);

 switch (crtc->pipe) {
 case 130:
  break;
 case 129:
  if (crtc_state->fdi_lanes > 2)
   cpt_set_fdi_bc_bifurcation(dev_priv, 0);
  else
   cpt_set_fdi_bc_bifurcation(dev_priv, 1);

  break;
 case 128:
  cpt_set_fdi_bc_bifurcation(dev_priv, 1);

  break;
 default:
  BUG();
 }
}
