
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 int intel_plane_fb_max_stride (struct drm_i915_private*,int,int ) ;
 int is_ccs_modifier (int ) ;

__attribute__((used)) static
u32 intel_fb_max_stride(struct drm_i915_private *dev_priv,
   u32 pixel_format, u64 modifier)
{






 if (!is_ccs_modifier(modifier)) {
  if (INTEL_GEN(dev_priv) >= 7)
   return 256*1024;
  else if (INTEL_GEN(dev_priv) >= 4)
   return 128*1024;
 }

 return intel_plane_fb_max_stride(dev_priv, pixel_format, modifier);
}
