
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct malidp_hw_device {int pm_suspended; int pclk; int aclk; int mclk; TYPE_1__* hw; } ;
struct malidp_drm {struct malidp_hw_device* dev; } ;
struct drm_device {struct malidp_drm* dev_private; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* in_config_mode ) (struct malidp_hw_device*) ;} ;


 int WARN_ON (int) ;
 int clk_disable_unprepare (int ) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int malidp_de_irq_fini (struct malidp_hw_device*) ;
 int malidp_se_irq_fini (struct malidp_hw_device*) ;
 int stub1 (struct malidp_hw_device*) ;

__attribute__((used)) static int malidp_runtime_pm_suspend(struct device *dev)
{
 struct drm_device *drm = dev_get_drvdata(dev);
 struct malidp_drm *malidp = drm->dev_private;
 struct malidp_hw_device *hwdev = malidp->dev;


 WARN_ON(!hwdev->hw->in_config_mode(hwdev));

 malidp_se_irq_fini(hwdev);
 malidp_de_irq_fini(hwdev);
 hwdev->pm_suspended = 1;
 clk_disable_unprepare(hwdev->mclk);
 clk_disable_unprepare(hwdev->aclk);
 clk_disable_unprepare(hwdev->pclk);

 return 0;
}
