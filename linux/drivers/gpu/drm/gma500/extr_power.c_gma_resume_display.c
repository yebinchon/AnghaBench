
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct drm_psb_private {int suspended; int display_power; int pge_ctl; int gmch_ctrl; TYPE_1__* ops; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct TYPE_2__ {int (* restore_regs ) (struct drm_device*) ;int (* power_up ) (struct drm_device*) ;} ;


 int PSB_GMCH_CTRL ;
 int PSB_PGETBL_CTL ;
 int PSB_WVDC32 (int,int ) ;
 int _PSB_GMCH_ENABLED ;
 int _PSB_PGETBL_ENABLED ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;
 int psb_gtt_restore (struct drm_device*) ;
 int stub1 (struct drm_device*) ;
 int stub2 (struct drm_device*) ;

__attribute__((used)) static void gma_resume_display(struct pci_dev *pdev)
{
 struct drm_device *dev = pci_get_drvdata(pdev);
 struct drm_psb_private *dev_priv = dev->dev_private;


 dev_priv->ops->power_up(dev);
 dev_priv->suspended = 0;
 dev_priv->display_power = 1;

 PSB_WVDC32(dev_priv->pge_ctl | _PSB_PGETBL_ENABLED, PSB_PGETBL_CTL);
 pci_write_config_word(pdev, PSB_GMCH_CTRL,
   dev_priv->gmch_ctrl | _PSB_GMCH_ENABLED);

 psb_gtt_restore(dev);
 dev_priv->ops->restore_regs(dev);
}
