
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_dcu_drm_device {int regmap; } ;
struct drm_device {struct fsl_dcu_drm_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int DCU_INT_MASK ;
 unsigned int DCU_INT_MASK_VBLANK ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static void fsl_dcu_drm_crtc_disable_vblank(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct fsl_dcu_drm_device *fsl_dev = dev->dev_private;
 unsigned int value;

 regmap_read(fsl_dev->regmap, DCU_INT_MASK, &value);
 value |= DCU_INT_MASK_VBLANK;
 regmap_write(fsl_dev->regmap, DCU_INT_MASK, value);
}
