
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;


 int DRM_DEBUG_KMS (char*) ;
 int I915_READ (int ) ;
 int VGA_DISP_DISABLE ;
 int i915_disable_vga (struct drm_i915_private*) ;
 int i915_vgacntrl_reg (struct drm_i915_private*) ;

void i915_redisable_vga_power_on(struct drm_i915_private *dev_priv)
{
 i915_reg_t vga_reg = i915_vgacntrl_reg(dev_priv);

 if (!(I915_READ(vga_reg) & VGA_DISP_DISABLE)) {
  DRM_DEBUG_KMS("Something enabled VGA plane, disabling it\n");
  i915_disable_vga(dev_priv);
 }
}
