
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 unsigned int VGA_RSRC_LEGACY_IO ;
 unsigned int VGA_RSRC_LEGACY_MEM ;
 unsigned int VGA_RSRC_NORMAL_IO ;
 unsigned int VGA_RSRC_NORMAL_MEM ;
 int intel_modeset_vga_set_state (struct drm_i915_private*,int) ;

__attribute__((used)) static unsigned int i915_vga_set_decode(void *cookie, bool state)
{
 struct drm_i915_private *dev_priv = cookie;

 intel_modeset_vga_set_state(dev_priv, state);
 if (state)
  return VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM |
         VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
 else
  return VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
}
