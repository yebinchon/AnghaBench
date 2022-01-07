
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int eu_total; } ;
struct TYPE_4__ {TYPE_1__ sseu; } ;


 int FB_GFX_FMAX_AT_VMAX_2SS4EU_FUSE_SHIFT ;
 int FB_GFX_FMAX_AT_VMAX_2SS6EU_FUSE_SHIFT ;
 int FB_GFX_FMAX_AT_VMAX_2SS8EU_FUSE_SHIFT ;
 int FB_GFX_FMAX_AT_VMAX_FUSE ;
 int FB_GFX_FREQ_FUSE_MASK ;
 TYPE_2__* RUNTIME_INFO (struct drm_i915_private*) ;
 int vlv_punit_read (struct drm_i915_private*,int ) ;

__attribute__((used)) static int cherryview_rps_max_freq(struct drm_i915_private *dev_priv)
{
 u32 val, rp0;

 val = vlv_punit_read(dev_priv, FB_GFX_FMAX_AT_VMAX_FUSE);

 switch (RUNTIME_INFO(dev_priv)->sseu.eu_total) {
 case 8:

  rp0 = (val >> FB_GFX_FMAX_AT_VMAX_2SS4EU_FUSE_SHIFT);
  break;
 case 12:

  rp0 = (val >> FB_GFX_FMAX_AT_VMAX_2SS6EU_FUSE_SHIFT);
  break;
 case 16:

 default:

  rp0 = (val >> FB_GFX_FMAX_AT_VMAX_2SS8EU_FUSE_SHIFT);
  break;
 }

 rp0 = (rp0 & FB_GFX_FREQ_FUSE_MASK);

 return rp0;
}
