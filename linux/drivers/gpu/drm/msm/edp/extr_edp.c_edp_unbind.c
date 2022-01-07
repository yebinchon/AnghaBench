
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_drm_private {int * edp; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct device {int dummy; } ;


 int DBG (char*) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int edp_destroy (int ) ;
 int to_platform_device (struct device*) ;

__attribute__((used)) static void edp_unbind(struct device *dev, struct device *master, void *data)
{
 struct drm_device *drm = dev_get_drvdata(master);
 struct msm_drm_private *priv = drm->dev_private;

 DBG("");
 if (priv->edp) {
  edp_destroy(to_platform_device(dev));
  priv->edp = ((void*)0);
 }
}
