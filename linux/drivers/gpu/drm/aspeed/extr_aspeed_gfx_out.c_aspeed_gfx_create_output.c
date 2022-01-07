
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {struct aspeed_gfx* dev_private; } ;
struct TYPE_3__ {scalar_t__ polled; int dpms; } ;
struct aspeed_gfx {TYPE_1__ connector; } ;


 int DRM_MODE_CONNECTOR_Unknown ;
 int DRM_MODE_DPMS_OFF ;
 int aspeed_gfx_connector_funcs ;
 int aspeed_gfx_connector_helper_funcs ;
 int drm_connector_helper_add (TYPE_1__*,int *) ;
 int drm_connector_init (struct drm_device*,TYPE_1__*,int *,int ) ;

int aspeed_gfx_create_output(struct drm_device *drm)
{
 struct aspeed_gfx *priv = drm->dev_private;
 int ret;

 priv->connector.dpms = DRM_MODE_DPMS_OFF;
 priv->connector.polled = 0;
 drm_connector_helper_add(&priv->connector,
     &aspeed_gfx_connector_helper_funcs);
 ret = drm_connector_init(drm, &priv->connector,
     &aspeed_gfx_connector_funcs,
     DRM_MODE_CONNECTOR_Unknown);
 return ret;
}
