
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int sb_lock; } ;


 scalar_t__ HAS_PCH_LPT_LP (struct drm_i915_private*) ;
 int SBI_DBUFF0 ;
 int SBI_GEN0 ;
 int SBI_GEN0_CFG_BUFFENABLE_DISABLE ;
 int SBI_ICLK ;
 int SBI_SSCCTL ;
 int SBI_SSCCTL_DISABLE ;
 int SBI_SSCCTL_PATHALT ;
 int intel_sbi_read (struct drm_i915_private*,int,int ) ;
 int intel_sbi_write (struct drm_i915_private*,int,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int udelay (int) ;

void lpt_disable_clkout_dp(struct drm_i915_private *dev_priv)
{
 u32 reg, tmp;

 mutex_lock(&dev_priv->sb_lock);

 reg = HAS_PCH_LPT_LP(dev_priv) ? SBI_GEN0 : SBI_DBUFF0;
 tmp = intel_sbi_read(dev_priv, reg, SBI_ICLK);
 tmp &= ~SBI_GEN0_CFG_BUFFENABLE_DISABLE;
 intel_sbi_write(dev_priv, reg, tmp, SBI_ICLK);

 tmp = intel_sbi_read(dev_priv, SBI_SSCCTL, SBI_ICLK);
 if (!(tmp & SBI_SSCCTL_DISABLE)) {
  if (!(tmp & SBI_SSCCTL_PATHALT)) {
   tmp |= SBI_SSCCTL_PATHALT;
   intel_sbi_write(dev_priv, SBI_SSCCTL, tmp, SBI_ICLK);
   udelay(32);
  }
  tmp |= SBI_SSCCTL_DISABLE;
  intel_sbi_write(dev_priv, SBI_SSCCTL, tmp, SBI_ICLK);
 }

 mutex_unlock(&dev_priv->sb_lock);
}
