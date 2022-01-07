
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int udelay (int) ;
 int vlv_flisdsi_get (struct drm_i915_private*) ;
 int vlv_flisdsi_put (struct drm_i915_private*) ;
 int vlv_flisdsi_write (struct drm_i915_private*,int,int) ;

__attribute__((used)) static void band_gap_reset(struct drm_i915_private *dev_priv)
{
 vlv_flisdsi_get(dev_priv);

 vlv_flisdsi_write(dev_priv, 0x08, 0x0001);
 vlv_flisdsi_write(dev_priv, 0x0F, 0x0005);
 vlv_flisdsi_write(dev_priv, 0x0F, 0x0025);
 udelay(150);
 vlv_flisdsi_write(dev_priv, 0x0F, 0x0000);
 vlv_flisdsi_write(dev_priv, 0x08, 0x0000);

 vlv_flisdsi_put(dev_priv);
}
