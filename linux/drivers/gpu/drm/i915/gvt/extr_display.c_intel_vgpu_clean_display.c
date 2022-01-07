
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_vgpu {TYPE_1__* gvt; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {struct drm_i915_private* dev_priv; } ;


 scalar_t__ IS_COFFEELAKE (struct drm_i915_private*) ;
 scalar_t__ IS_KABYLAKE (struct drm_i915_private*) ;
 scalar_t__ IS_SKYLAKE (struct drm_i915_private*) ;
 int PORT_B ;
 int PORT_D ;
 int clean_virtual_dp_monitor (struct intel_vgpu*,int ) ;

void intel_vgpu_clean_display(struct intel_vgpu *vgpu)
{
 struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;

 if (IS_SKYLAKE(dev_priv) || IS_KABYLAKE(dev_priv) ||
     IS_COFFEELAKE(dev_priv))
  clean_virtual_dp_monitor(vgpu, PORT_D);
 else
  clean_virtual_dp_monitor(vgpu, PORT_B);
}
