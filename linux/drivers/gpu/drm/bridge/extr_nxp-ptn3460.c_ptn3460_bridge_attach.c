
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dev; int polled; } ;
struct ptn3460_bridge {TYPE_1__ connector; scalar_t__ panel; } ;
struct drm_bridge {int encoder; int dev; } ;


 int DRM_CONNECTOR_POLL_HPD ;
 int DRM_ERROR (char*) ;
 int DRM_MODE_CONNECTOR_LVDS ;
 int ENODEV ;
 struct ptn3460_bridge* bridge_to_ptn3460 (struct drm_bridge*) ;
 int drm_connector_attach_encoder (TYPE_1__*,int ) ;
 int drm_connector_helper_add (TYPE_1__*,int *) ;
 int drm_connector_init (int ,TYPE_1__*,int *,int ) ;
 int drm_connector_register (TYPE_1__*) ;
 int drm_helper_hpd_irq_event (int ) ;
 int drm_panel_attach (scalar_t__,TYPE_1__*) ;
 int ptn3460_connector_funcs ;
 int ptn3460_connector_helper_funcs ;

__attribute__((used)) static int ptn3460_bridge_attach(struct drm_bridge *bridge)
{
 struct ptn3460_bridge *ptn_bridge = bridge_to_ptn3460(bridge);
 int ret;

 if (!bridge->encoder) {
  DRM_ERROR("Parent encoder object not found");
  return -ENODEV;
 }

 ptn_bridge->connector.polled = DRM_CONNECTOR_POLL_HPD;
 ret = drm_connector_init(bridge->dev, &ptn_bridge->connector,
   &ptn3460_connector_funcs, DRM_MODE_CONNECTOR_LVDS);
 if (ret) {
  DRM_ERROR("Failed to initialize connector with drm\n");
  return ret;
 }
 drm_connector_helper_add(&ptn_bridge->connector,
     &ptn3460_connector_helper_funcs);
 drm_connector_register(&ptn_bridge->connector);
 drm_connector_attach_encoder(&ptn_bridge->connector,
       bridge->encoder);

 if (ptn_bridge->panel)
  drm_panel_attach(ptn_bridge->panel, &ptn_bridge->connector);

 drm_helper_hpd_irq_event(ptn_bridge->connector.dev);

 return ret;
}
