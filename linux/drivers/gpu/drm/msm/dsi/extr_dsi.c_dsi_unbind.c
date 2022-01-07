
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi {int id; } ;
struct msm_drm_private {int ** dsi; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct device {int dummy; } ;


 void* dev_get_drvdata (struct device*) ;
 int dsi_destroy (struct msm_dsi*) ;

__attribute__((used)) static void dsi_unbind(struct device *dev, struct device *master,
  void *data)
{
 struct drm_device *drm = dev_get_drvdata(master);
 struct msm_drm_private *priv = drm->dev_private;
 struct msm_dsi *msm_dsi = dev_get_drvdata(dev);
 int id = msm_dsi->id;

 if (priv->dsi[id]) {
  dsi_destroy(msm_dsi);
  priv->dsi[id] = ((void*)0);
 }
}
