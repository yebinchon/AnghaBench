
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tilcdc_drm_private {int external_connector; TYPE_1__* external_encoder; int crtc; } ;
struct drm_device {int dev; struct tilcdc_drm_private* dev_private; } ;
struct drm_bridge {int dummy; } ;
struct TYPE_3__ {int possible_crtcs; } ;


 int BIT (int ) ;
 int ENODEV ;
 int dev_err (int ,char*,int) ;
 int drm_bridge_attach (TYPE_1__*,struct drm_bridge*,int *) ;
 int panel_info_default ;
 int tilcdc_crtc_set_panel_info (int ,int *) ;
 int tilcdc_encoder_find_connector (struct drm_device*,TYPE_1__*) ;

__attribute__((used)) static
int tilcdc_attach_bridge(struct drm_device *ddev, struct drm_bridge *bridge)
{
 struct tilcdc_drm_private *priv = ddev->dev_private;
 int ret;

 priv->external_encoder->possible_crtcs = BIT(0);

 ret = drm_bridge_attach(priv->external_encoder, bridge, ((void*)0));
 if (ret) {
  dev_err(ddev->dev, "drm_bridge_attach() failed %d\n", ret);
  return ret;
 }

 tilcdc_crtc_set_panel_info(priv->crtc, &panel_info_default);

 priv->external_connector =
  tilcdc_encoder_find_connector(ddev, priv->external_encoder);
 if (!priv->external_connector)
  return -ENODEV;

 return 0;
}
