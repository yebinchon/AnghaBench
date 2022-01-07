
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {scalar_t__ hpll_freq; } ;


 int vlv_cck_get (struct drm_i915_private*) ;
 int vlv_cck_put (struct drm_i915_private*) ;
 int vlv_get_cck_clock (struct drm_i915_private*,char const*,int ,scalar_t__) ;
 scalar_t__ vlv_get_hpll_vco (struct drm_i915_private*) ;

int vlv_get_cck_clock_hpll(struct drm_i915_private *dev_priv,
      const char *name, u32 reg)
{
 int hpll;

 vlv_cck_get(dev_priv);

 if (dev_priv->hpll_freq == 0)
  dev_priv->hpll_freq = vlv_get_hpll_vco(dev_priv);

 hpll = vlv_get_cck_clock(dev_priv, name, reg, dev_priv->hpll_freq);

 vlv_cck_put(dev_priv);

 return hpll;
}
