
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int FB_GFX_FMAX_AT_VMAX_FUSE ;
 int FB_GFX_FREQ_FUSE_MASK ;
 int vlv_punit_read (struct drm_i915_private*,int ) ;

__attribute__((used)) static int cherryview_rps_guar_freq(struct drm_i915_private *dev_priv)
{
 u32 val, rp1;

 val = vlv_punit_read(dev_priv, FB_GFX_FMAX_AT_VMAX_FUSE);
 rp1 = (val & FB_GFX_FREQ_FUSE_MASK);

 return rp1;
}
