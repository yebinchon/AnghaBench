
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_edp {int dummy; } ;
struct msm_drm_private {struct msm_edp* edp; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct device {int dummy; } ;


 int DBG (char*) ;
 scalar_t__ IS_ERR (struct msm_edp*) ;
 int PTR_ERR (struct msm_edp*) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 struct msm_edp* edp_init (int ) ;
 int to_platform_device (struct device*) ;

__attribute__((used)) static int edp_bind(struct device *dev, struct device *master, void *data)
{
 struct drm_device *drm = dev_get_drvdata(master);
 struct msm_drm_private *priv = drm->dev_private;
 struct msm_edp *edp;

 DBG("");
 edp = edp_init(to_platform_device(dev));
 if (IS_ERR(edp))
  return PTR_ERR(edp);
 priv->edp = edp;

 return 0;
}
