
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {int mode_dev; scalar_t__ hdmi_priv; scalar_t__ iLVDS_enable; } ;
struct drm_device {int dev; struct drm_psb_private* dev_private; } ;


 int SDVOB ;
 int dev_err (int ,char*) ;
 int oaktrail_hdmi_init (struct drm_device*,int *) ;
 int oaktrail_lvds_init (struct drm_device*,int *) ;
 int psb_intel_sdvo_init (struct drm_device*,int ) ;

__attribute__((used)) static int oaktrail_output_init(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 if (dev_priv->iLVDS_enable)
  oaktrail_lvds_init(dev, &dev_priv->mode_dev);
 else
  dev_err(dev->dev, "DSI is not supported\n");
 if (dev_priv->hdmi_priv)
  oaktrail_hdmi_init(dev, &dev_priv->mode_dev);

 psb_intel_sdvo_init(dev, SDVOB);

 return 0;
}
