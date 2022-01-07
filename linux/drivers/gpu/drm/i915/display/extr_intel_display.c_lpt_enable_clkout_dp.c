
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
 scalar_t__ WARN (int,char*) ;
 int intel_sbi_read (struct drm_i915_private*,int ,int ) ;
 int intel_sbi_write (struct drm_i915_private*,int ,int ,int ) ;
 int lpt_program_fdi_mphy (struct drm_i915_private*) ;
 int lpt_reset_fdi_mphy (struct drm_i915_private*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int udelay (int) ;

__attribute__((used)) static void lpt_enable_clkout_dp(struct drm_i915_private *dev_priv,
     bool with_spread, bool with_fdi)
{
 u32 reg, tmp;

 if (WARN(with_fdi && !with_spread, "FDI requires downspread\n"))
  with_spread = 1;
 if (WARN(HAS_PCH_LPT_LP(dev_priv) &&
     with_fdi, "LP PCH doesn't have FDI\n"))
  with_fdi = 0;

 mutex_lock(&dev_priv->sb_lock);

 tmp = intel_sbi_read(dev_priv, SBI_SSCCTL, SBI_ICLK);
 tmp &= ~SBI_SSCCTL_DISABLE;
 tmp |= SBI_SSCCTL_PATHALT;
 intel_sbi_write(dev_priv, SBI_SSCCTL, tmp, SBI_ICLK);

 udelay(24);

 if (with_spread) {
  tmp = intel_sbi_read(dev_priv, SBI_SSCCTL, SBI_ICLK);
  tmp &= ~SBI_SSCCTL_PATHALT;
  intel_sbi_write(dev_priv, SBI_SSCCTL, tmp, SBI_ICLK);

  if (with_fdi) {
   lpt_reset_fdi_mphy(dev_priv);
   lpt_program_fdi_mphy(dev_priv);
  }
 }

 reg = HAS_PCH_LPT_LP(dev_priv) ? SBI_GEN0 : SBI_DBUFF0;
 tmp = intel_sbi_read(dev_priv, reg, SBI_ICLK);
 tmp |= SBI_GEN0_CFG_BUFFENABLE_DISABLE;
 intel_sbi_write(dev_priv, reg, tmp, SBI_ICLK);

 mutex_unlock(&dev_priv->sb_lock);
}
