
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int sb_lock; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int I915_READ (int ) ;
 int PIXCLK_GATE ;
 int PIXCLK_GATE_UNGATE ;
 int SBI_ICLK ;
 int SBI_SSCAUXDIV6 ;
 int SBI_SSCAUXDIV_FINALDIV2SEL_MASK ;
 int SBI_SSCAUXDIV_FINALDIV2SEL_SHIFT ;
 int SBI_SSCCTL6 ;
 int SBI_SSCCTL_DISABLE ;
 int SBI_SSCDIVINTPHASE6 ;
 int SBI_SSCDIVINTPHASE_DIVSEL_MASK ;
 int SBI_SSCDIVINTPHASE_DIVSEL_SHIFT ;
 int SBI_SSCDIVINTPHASE_INCVAL_MASK ;
 int SBI_SSCDIVINTPHASE_INCVAL_SHIFT ;
 int intel_sbi_read (struct drm_i915_private*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int lpt_get_iclkip(struct drm_i915_private *dev_priv)
{
 u32 divsel, phaseinc, auxdiv;
 u32 iclk_virtual_root_freq = 172800 * 1000;
 u32 iclk_pi_range = 64;
 u32 desired_divisor;
 u32 temp;

 if ((I915_READ(PIXCLK_GATE) & PIXCLK_GATE_UNGATE) == 0)
  return 0;

 mutex_lock(&dev_priv->sb_lock);

 temp = intel_sbi_read(dev_priv, SBI_SSCCTL6, SBI_ICLK);
 if (temp & SBI_SSCCTL_DISABLE) {
  mutex_unlock(&dev_priv->sb_lock);
  return 0;
 }

 temp = intel_sbi_read(dev_priv, SBI_SSCDIVINTPHASE6, SBI_ICLK);
 divsel = (temp & SBI_SSCDIVINTPHASE_DIVSEL_MASK) >>
  SBI_SSCDIVINTPHASE_DIVSEL_SHIFT;
 phaseinc = (temp & SBI_SSCDIVINTPHASE_INCVAL_MASK) >>
  SBI_SSCDIVINTPHASE_INCVAL_SHIFT;

 temp = intel_sbi_read(dev_priv, SBI_SSCAUXDIV6, SBI_ICLK);
 auxdiv = (temp & SBI_SSCAUXDIV_FINALDIV2SEL_MASK) >>
  SBI_SSCAUXDIV_FINALDIV2SEL_SHIFT;

 mutex_unlock(&dev_priv->sb_lock);

 desired_divisor = (divsel + 2) * iclk_pi_range + phaseinc;

 return DIV_ROUND_CLOSEST(iclk_virtual_root_freq,
     desired_divisor << auxdiv);
}
