
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct msm_dsi {size_t id; } ;
struct msm_drm_private {struct msm_dsi** dsi; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct device {int dummy; } ;


 int DBG (char*) ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct msm_dsi*) ;
 int PTR_ERR (struct msm_dsi*) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 struct msm_dsi* dsi_init (struct platform_device*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int dsi_bind(struct device *dev, struct device *master, void *data)
{
 struct drm_device *drm = dev_get_drvdata(master);
 struct msm_drm_private *priv = drm->dev_private;
 struct platform_device *pdev = to_platform_device(dev);
 struct msm_dsi *msm_dsi;

 DBG("");
 msm_dsi = dsi_init(pdev);
 if (IS_ERR(msm_dsi)) {

  if (PTR_ERR(msm_dsi) == -ENODEV)
   return 0;
  else
   return PTR_ERR(msm_dsi);
 }

 priv->dsi[msm_dsi->id] = msm_dsi;

 return 0;
}
