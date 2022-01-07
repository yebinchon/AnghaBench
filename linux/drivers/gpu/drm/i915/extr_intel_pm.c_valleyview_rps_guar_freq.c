
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int FB_GFX_FGUARANTEED_FREQ_FUSE_MASK ;
 int FB_GFX_FGUARANTEED_FREQ_FUSE_SHIFT ;
 int IOSF_NC_FB_GFX_FREQ_FUSE ;
 int vlv_nc_read (struct drm_i915_private*,int ) ;

__attribute__((used)) static int valleyview_rps_guar_freq(struct drm_i915_private *dev_priv)
{
 u32 val, rp1;

 val = vlv_nc_read(dev_priv, IOSF_NC_FB_GFX_FREQ_FUSE);

 rp1 = (val & FB_GFX_FGUARANTEED_FREQ_FUSE_MASK) >> FB_GFX_FGUARANTEED_FREQ_FUSE_SHIFT;

 return rp1;
}
