
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_vgpu {TYPE_1__* gvt; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {struct drm_i915_private* dev_priv; } ;


 int GAMW_ECO_ENABLE_64K_IPS_FIELD ;
 int GEN8_GAMW_ECO_DEV_RW_IA ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int vgpu_vreg_t (struct intel_vgpu*,int ) ;

__attribute__((used)) static bool vgpu_ips_enabled(struct intel_vgpu *vgpu)
{
 struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;

 if (INTEL_GEN(dev_priv) == 9 || INTEL_GEN(dev_priv) == 10) {
  u32 ips = vgpu_vreg_t(vgpu, GEN8_GAMW_ECO_DEV_RW_IA) &
   GAMW_ECO_ENABLE_64K_IPS_FIELD;

  return ips == GAMW_ECO_ENABLE_64K_IPS_FIELD;
 } else if (INTEL_GEN(dev_priv) >= 11) {

  return 1;
 } else
  return 0;
}
