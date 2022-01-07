
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_dcu_drm_device {int regmap; } ;
struct drm_device {int dev; struct fsl_dcu_drm_device* dev_private; } ;
typedef int irqreturn_t ;


 int DCU_INT_STATUS ;
 unsigned int DCU_INT_STATUS_VBLANK ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dev_err (int ,char*) ;
 int drm_handle_vblank (struct drm_device*,int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static irqreturn_t fsl_dcu_drm_irq(int irq, void *arg)
{
 struct drm_device *dev = arg;
 struct fsl_dcu_drm_device *fsl_dev = dev->dev_private;
 unsigned int int_status;
 int ret;

 ret = regmap_read(fsl_dev->regmap, DCU_INT_STATUS, &int_status);
 if (ret) {
  dev_err(dev->dev, "read DCU_INT_STATUS failed\n");
  return IRQ_NONE;
 }

 if (int_status & DCU_INT_STATUS_VBLANK)
  drm_handle_vblank(dev, 0);

 regmap_write(fsl_dev->regmap, DCU_INT_STATUS, int_status);

 return IRQ_HANDLED;
}
