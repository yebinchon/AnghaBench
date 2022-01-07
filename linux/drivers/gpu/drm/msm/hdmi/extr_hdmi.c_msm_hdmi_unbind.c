
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_drm_private {TYPE_1__* hdmi; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ audio_pdev; } ;


 struct drm_device* dev_get_drvdata (struct device*) ;
 int msm_hdmi_destroy (TYPE_1__*) ;
 int platform_device_unregister (scalar_t__) ;

__attribute__((used)) static void msm_hdmi_unbind(struct device *dev, struct device *master,
  void *data)
{
 struct drm_device *drm = dev_get_drvdata(master);
 struct msm_drm_private *priv = drm->dev_private;
 if (priv->hdmi) {
  if (priv->hdmi->audio_pdev)
   platform_device_unregister(priv->hdmi->audio_pdev);

  msm_hdmi_destroy(priv->hdmi);
  priv->hdmi = ((void*)0);
 }
}
