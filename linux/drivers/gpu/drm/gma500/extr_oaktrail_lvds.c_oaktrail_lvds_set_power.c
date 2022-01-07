
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct gma_encoder {int dummy; } ;
struct drm_psb_private {int is_lvds_on; TYPE_1__* ops; } ;
struct drm_device {TYPE_2__* pdev; struct drm_psb_private* dev_private; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int (* lvds_bl_power ) (struct drm_device*,int) ;} ;


 int POWER_TARGET_ON ;
 int PP_CONTROL ;
 int PP_ON ;
 int PP_READY ;
 int PP_STATUS ;
 int REG_READ (int ) ;
 int REG_WRITE (int ,int) ;
 int gma_power_begin (struct drm_device*,int) ;
 int gma_power_end (struct drm_device*) ;
 int pm_request_idle (int *) ;
 int stub1 (struct drm_device*,int) ;
 int stub2 (struct drm_device*,int) ;

__attribute__((used)) static void oaktrail_lvds_set_power(struct drm_device *dev,
    struct gma_encoder *gma_encoder,
    bool on)
{
 u32 pp_status;
 struct drm_psb_private *dev_priv = dev->dev_private;

 if (!gma_power_begin(dev, 1))
  return;

 if (on) {
  REG_WRITE(PP_CONTROL, REG_READ(PP_CONTROL) |
     POWER_TARGET_ON);
  do {
   pp_status = REG_READ(PP_STATUS);
  } while ((pp_status & (PP_ON | PP_READY)) == PP_READY);
  dev_priv->is_lvds_on = 1;
  if (dev_priv->ops->lvds_bl_power)
   dev_priv->ops->lvds_bl_power(dev, 1);
 } else {
  if (dev_priv->ops->lvds_bl_power)
   dev_priv->ops->lvds_bl_power(dev, 0);
  REG_WRITE(PP_CONTROL, REG_READ(PP_CONTROL) &
     ~POWER_TARGET_ON);
  do {
   pp_status = REG_READ(PP_STATUS);
  } while (pp_status & PP_ON);
  dev_priv->is_lvds_on = 0;
  pm_request_idle(&dev->pdev->dev);
 }
 gma_power_end(dev);
}
