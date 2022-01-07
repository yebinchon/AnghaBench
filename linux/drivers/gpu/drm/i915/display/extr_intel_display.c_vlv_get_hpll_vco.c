
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int CCK_FUSE_HPLL_FREQ_MASK ;
 int CCK_FUSE_REG ;
 int vlv_cck_read (struct drm_i915_private*,int ) ;

int vlv_get_hpll_vco(struct drm_i915_private *dev_priv)
{
 int hpll_freq, vco_freq[] = { 800, 1600, 2000, 2400 };


 hpll_freq = vlv_cck_read(dev_priv, CCK_FUSE_REG) &
  CCK_FUSE_HPLL_FREQ_MASK;

 return vco_freq[hpll_freq] * 1000;
}
