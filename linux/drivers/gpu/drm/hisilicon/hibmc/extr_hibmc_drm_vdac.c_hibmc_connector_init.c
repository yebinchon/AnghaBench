
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hibmc_drm_private {struct drm_device* dev; } ;
struct drm_device {int dev; } ;
struct drm_connector {int dummy; } ;


 int DRM_ERROR (char*,...) ;
 int DRM_MODE_CONNECTOR_VGA ;
 int ENOMEM ;
 struct drm_connector* ERR_PTR (int) ;
 int GFP_KERNEL ;
 struct drm_connector* devm_kzalloc (int ,int,int ) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (struct drm_device*,struct drm_connector*,int *,int ) ;
 int hibmc_connector_funcs ;
 int hibmc_connector_helper_funcs ;

__attribute__((used)) static struct drm_connector *
hibmc_connector_init(struct hibmc_drm_private *priv)
{
 struct drm_device *dev = priv->dev;
 struct drm_connector *connector;
 int ret;

 connector = devm_kzalloc(dev->dev, sizeof(*connector), GFP_KERNEL);
 if (!connector) {
  DRM_ERROR("failed to alloc memory when init connector\n");
  return ERR_PTR(-ENOMEM);
 }

 ret = drm_connector_init(dev, connector,
     &hibmc_connector_funcs,
     DRM_MODE_CONNECTOR_VGA);
 if (ret) {
  DRM_ERROR("failed to init connector: %d\n", ret);
  return ERR_PTR(ret);
 }
 drm_connector_helper_add(connector,
     &hibmc_connector_helper_funcs);

 return connector;
}
