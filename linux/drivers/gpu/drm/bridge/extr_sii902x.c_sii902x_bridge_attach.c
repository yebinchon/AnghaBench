
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int polled; } ;
struct sii902x {TYPE_2__ connector; TYPE_1__* i2c; } ;
struct drm_device {int dummy; } ;
struct drm_bridge {int encoder; struct drm_device* dev; } ;
struct TYPE_5__ {scalar_t__ irq; int dev; } ;


 int DRIVER_ATOMIC ;
 int DRM_CONNECTOR_POLL_CONNECT ;
 int DRM_CONNECTOR_POLL_HPD ;
 int DRM_MODE_CONNECTOR_HDMIA ;
 int ENOTSUPP ;
 struct sii902x* bridge_to_sii902x (struct drm_bridge*) ;
 int dev_err (int *,char*) ;
 int drm_connector_attach_encoder (TYPE_2__*,int ) ;
 int drm_connector_helper_add (TYPE_2__*,int *) ;
 int drm_connector_init (struct drm_device*,TYPE_2__*,int *,int ) ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int sii902x_connector_funcs ;
 int sii902x_connector_helper_funcs ;

__attribute__((used)) static int sii902x_bridge_attach(struct drm_bridge *bridge)
{
 struct sii902x *sii902x = bridge_to_sii902x(bridge);
 struct drm_device *drm = bridge->dev;
 int ret;

 drm_connector_helper_add(&sii902x->connector,
     &sii902x_connector_helper_funcs);

 if (!drm_core_check_feature(drm, DRIVER_ATOMIC)) {
  dev_err(&sii902x->i2c->dev,
   "sii902x driver is only compatible with DRM devices supporting atomic updates\n");
  return -ENOTSUPP;
 }

 ret = drm_connector_init(drm, &sii902x->connector,
     &sii902x_connector_funcs,
     DRM_MODE_CONNECTOR_HDMIA);
 if (ret)
  return ret;

 if (sii902x->i2c->irq > 0)
  sii902x->connector.polled = DRM_CONNECTOR_POLL_HPD;
 else
  sii902x->connector.polled = DRM_CONNECTOR_POLL_CONNECT;

 drm_connector_attach_encoder(&sii902x->connector, bridge->encoder);

 return 0;
}
