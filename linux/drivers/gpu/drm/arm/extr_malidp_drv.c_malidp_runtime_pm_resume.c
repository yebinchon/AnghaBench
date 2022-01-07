
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malidp_hw_device {int pm_suspended; int mclk; int aclk; int pclk; } ;
struct malidp_drm {struct malidp_hw_device* dev; } ;
struct drm_device {struct malidp_drm* dev_private; } ;
struct device {int dummy; } ;


 int clk_prepare_enable (int ) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int malidp_de_irq_hw_init (struct malidp_hw_device*) ;
 int malidp_se_irq_hw_init (struct malidp_hw_device*) ;

__attribute__((used)) static int malidp_runtime_pm_resume(struct device *dev)
{
 struct drm_device *drm = dev_get_drvdata(dev);
 struct malidp_drm *malidp = drm->dev_private;
 struct malidp_hw_device *hwdev = malidp->dev;

 clk_prepare_enable(hwdev->pclk);
 clk_prepare_enable(hwdev->aclk);
 clk_prepare_enable(hwdev->mclk);
 hwdev->pm_suspended = 0;
 malidp_de_irq_hw_init(hwdev);
 malidp_se_irq_hw_init(hwdev);

 return 0;
}
