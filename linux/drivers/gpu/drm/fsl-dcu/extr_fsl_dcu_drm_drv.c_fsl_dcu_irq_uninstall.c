
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_dcu_drm_device {int regmap; } ;
struct drm_device {struct fsl_dcu_drm_device* dev_private; } ;


 int DCU_INT_MASK ;
 int DCU_INT_STATUS ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void fsl_dcu_irq_uninstall(struct drm_device *dev)
{
 struct fsl_dcu_drm_device *fsl_dev = dev->dev_private;

 regmap_write(fsl_dev->regmap, DCU_INT_STATUS, ~0);
 regmap_write(fsl_dev->regmap, DCU_INT_MASK, ~0);
}
