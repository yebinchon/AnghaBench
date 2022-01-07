
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int FB_FMAX_VMIN_FREQ_HI_MASK ;
 int FB_FMAX_VMIN_FREQ_LO_MASK ;
 int FB_FMAX_VMIN_FREQ_LO_SHIFT ;
 int IOSF_NC_FB_GFX_FMAX_FUSE_HI ;
 int IOSF_NC_FB_GFX_FMAX_FUSE_LO ;
 int vlv_nc_read (struct drm_i915_private*,int ) ;

__attribute__((used)) static int valleyview_rps_rpe_freq(struct drm_i915_private *dev_priv)
{
 u32 val, rpe;

 val = vlv_nc_read(dev_priv, IOSF_NC_FB_GFX_FMAX_FUSE_LO);
 rpe = (val & FB_FMAX_VMIN_FREQ_LO_MASK) >> FB_FMAX_VMIN_FREQ_LO_SHIFT;
 val = vlv_nc_read(dev_priv, IOSF_NC_FB_GFX_FMAX_FUSE_HI);
 rpe |= (val & FB_FMAX_VMIN_FREQ_HI_MASK) << 5;

 return rpe;
}
