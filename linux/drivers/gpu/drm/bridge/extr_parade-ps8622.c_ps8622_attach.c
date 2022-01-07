
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dev; int polled; } ;
struct ps8622_bridge {TYPE_1__ connector; scalar_t__ panel; } ;
struct drm_bridge {int encoder; int dev; } ;


 int DRM_CONNECTOR_POLL_HPD ;
 int DRM_ERROR (char*) ;
 int DRM_MODE_CONNECTOR_LVDS ;
 int ENODEV ;
 struct ps8622_bridge* bridge_to_ps8622 (struct drm_bridge*) ;
 int drm_connector_attach_encoder (TYPE_1__*,int ) ;
 int drm_connector_helper_add (TYPE_1__*,int *) ;
 int drm_connector_init (int ,TYPE_1__*,int *,int ) ;
 int drm_connector_register (TYPE_1__*) ;
 int drm_helper_hpd_irq_event (int ) ;
 int drm_panel_attach (scalar_t__,TYPE_1__*) ;
 int ps8622_connector_funcs ;
 int ps8622_connector_helper_funcs ;

__attribute__((used)) static int ps8622_attach(struct drm_bridge *bridge)
{
 struct ps8622_bridge *ps8622 = bridge_to_ps8622(bridge);
 int ret;

 if (!bridge->encoder) {
  DRM_ERROR("Parent encoder object not found");
  return -ENODEV;
 }

 ps8622->connector.polled = DRM_CONNECTOR_POLL_HPD;
 ret = drm_connector_init(bridge->dev, &ps8622->connector,
   &ps8622_connector_funcs, DRM_MODE_CONNECTOR_LVDS);
 if (ret) {
  DRM_ERROR("Failed to initialize connector with drm\n");
  return ret;
 }
 drm_connector_helper_add(&ps8622->connector,
     &ps8622_connector_helper_funcs);
 drm_connector_register(&ps8622->connector);
 drm_connector_attach_encoder(&ps8622->connector,
       bridge->encoder);

 if (ps8622->panel)
  drm_panel_attach(ps8622->panel, &ps8622->connector);

 drm_helper_hpd_irq_event(ps8622->connector.dev);

 return ret;
}
