
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_psb_private {int apm_base; int ospm_base; } ;
struct drm_device {int dev; TYPE_1__* pdev; struct drm_psb_private* dev_private; } ;
struct TYPE_2__ {int bus; } ;


 int CDV_MSG_READ32 (int,int ,int ) ;
 int PSB_APMBA ;
 scalar_t__ PSB_APM_CMD ;
 scalar_t__ PSB_APM_STS ;
 int PSB_OSPMBA ;
 int PSB_PUNIT_PORT ;
 int PSB_PWRGT_GFX_MASK ;
 int PSB_PWRGT_GFX_ON ;
 int dev_err (int ,char*) ;
 int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;
 int pci_domain_nr (int ) ;
 int udelay (int) ;

__attribute__((used)) static void cdv_init_pm(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 u32 pwr_cnt;
 int domain = pci_domain_nr(dev->pdev->bus);
 int i;

 dev_priv->apm_base = CDV_MSG_READ32(domain, PSB_PUNIT_PORT,
       PSB_APMBA) & 0xFFFF;
 dev_priv->ospm_base = CDV_MSG_READ32(domain, PSB_PUNIT_PORT,
       PSB_OSPMBA) & 0xFFFF;


 pwr_cnt = inl(dev_priv->apm_base + PSB_APM_CMD);


 pwr_cnt &= ~PSB_PWRGT_GFX_MASK;
 pwr_cnt |= PSB_PWRGT_GFX_ON;
 outl(pwr_cnt, dev_priv->apm_base + PSB_APM_CMD);


 for (i = 0; i < 5; i++) {
  u32 pwr_sts = inl(dev_priv->apm_base + PSB_APM_STS);
  if ((pwr_sts & PSB_PWRGT_GFX_MASK) == 0)
   return;
  udelay(10);
 }
 dev_err(dev->dev, "GPU: power management timed out.\n");
}
