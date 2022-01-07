
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dw_mipi_dsi {int panel_bridge; } ;
struct drm_bridge {TYPE_1__* encoder; } ;
struct TYPE_2__ {int encoder_type; } ;


 int DRM_ERROR (char*) ;
 int DRM_MODE_ENCODER_DSI ;
 int ENODEV ;
 struct dw_mipi_dsi* bridge_to_dsi (struct drm_bridge*) ;
 int drm_bridge_attach (TYPE_1__*,int ,struct drm_bridge*) ;

__attribute__((used)) static int dw_mipi_dsi_bridge_attach(struct drm_bridge *bridge)
{
 struct dw_mipi_dsi *dsi = bridge_to_dsi(bridge);

 if (!bridge->encoder) {
  DRM_ERROR("Parent encoder object not found\n");
  return -ENODEV;
 }


 bridge->encoder->encoder_type = DRM_MODE_ENCODER_DSI;


 return drm_bridge_attach(bridge->encoder, dsi->panel_bridge, bridge);
}
