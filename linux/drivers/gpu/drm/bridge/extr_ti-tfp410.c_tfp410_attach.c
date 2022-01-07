
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int polled; int display_info; } ;
struct tfp410 {scalar_t__ hpd_irq; TYPE_1__ connector; int bus_format; int dev; int ddc; int connector_type; } ;
struct drm_bridge {int encoder; int dev; } ;


 int DRM_CONNECTOR_POLL_CONNECT ;
 int DRM_CONNECTOR_POLL_DISCONNECT ;
 int DRM_CONNECTOR_POLL_HPD ;
 int ENODEV ;
 int dev_err (int ,char*,...) ;
 struct tfp410* drm_bridge_to_tfp410 (struct drm_bridge*) ;
 int drm_connector_attach_encoder (TYPE_1__*,int ) ;
 int drm_connector_helper_add (TYPE_1__*,int *) ;
 int drm_connector_init_with_ddc (int ,TYPE_1__*,int *,int ,int ) ;
 int drm_display_info_set_bus_formats (int *,int *,int) ;
 int tfp410_con_funcs ;
 int tfp410_con_helper_funcs ;

__attribute__((used)) static int tfp410_attach(struct drm_bridge *bridge)
{
 struct tfp410 *dvi = drm_bridge_to_tfp410(bridge);
 int ret;

 if (!bridge->encoder) {
  dev_err(dvi->dev, "Missing encoder\n");
  return -ENODEV;
 }

 if (dvi->hpd_irq >= 0)
  dvi->connector.polled = DRM_CONNECTOR_POLL_HPD;
 else
  dvi->connector.polled = DRM_CONNECTOR_POLL_CONNECT | DRM_CONNECTOR_POLL_DISCONNECT;

 drm_connector_helper_add(&dvi->connector,
     &tfp410_con_helper_funcs);
 ret = drm_connector_init_with_ddc(bridge->dev, &dvi->connector,
       &tfp410_con_funcs,
       dvi->connector_type,
       dvi->ddc);
 if (ret) {
  dev_err(dvi->dev, "drm_connector_init() failed: %d\n", ret);
  return ret;
 }

 drm_display_info_set_bus_formats(&dvi->connector.display_info,
      &dvi->bus_format, 1);

 drm_connector_attach_encoder(&dvi->connector,
       bridge->encoder);

 return 0;
}
