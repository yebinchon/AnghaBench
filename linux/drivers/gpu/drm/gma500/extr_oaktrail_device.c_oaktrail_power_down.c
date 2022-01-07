
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_psb_private {scalar_t__ ospm_base; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 scalar_t__ PSB_PM_SSC ;
 scalar_t__ PSB_PM_SSS ;
 int PSB_PWRGT_DISPLAY_MASK ;
 int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int oaktrail_power_down(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 u32 pwr_mask ;
 u32 pwr_sts;

 pwr_mask = PSB_PWRGT_DISPLAY_MASK;
 outl(pwr_mask, dev_priv->ospm_base + PSB_PM_SSC);

 while (1) {
  pwr_sts = inl(dev_priv->ospm_base + PSB_PM_SSS);
  if ((pwr_sts & pwr_mask) == pwr_mask)
   break;
  else
   udelay(10);
 }
 return 0;
}
