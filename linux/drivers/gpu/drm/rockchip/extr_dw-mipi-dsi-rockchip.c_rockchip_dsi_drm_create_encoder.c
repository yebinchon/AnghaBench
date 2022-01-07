
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int possible_crtcs; } ;
struct dw_mipi_dsi_rockchip {TYPE_1__* dev; struct drm_encoder encoder; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int of_node; } ;


 int DRM_ERROR (char*) ;
 int DRM_MODE_ENCODER_DSI ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 int drm_of_find_possible_crtcs (struct drm_device*,int ) ;
 int dw_mipi_dsi_encoder_funcs ;
 int dw_mipi_dsi_encoder_helper_funcs ;

__attribute__((used)) static int rockchip_dsi_drm_create_encoder(struct dw_mipi_dsi_rockchip *dsi,
        struct drm_device *drm_dev)
{
 struct drm_encoder *encoder = &dsi->encoder;
 int ret;

 encoder->possible_crtcs = drm_of_find_possible_crtcs(drm_dev,
            dsi->dev->of_node);

 ret = drm_encoder_init(drm_dev, encoder, &dw_mipi_dsi_encoder_funcs,
          DRM_MODE_ENCODER_DSI, ((void*)0));
 if (ret) {
  DRM_ERROR("Failed to initialize encoder with drm\n");
  return ret;
 }

 drm_encoder_helper_add(encoder, &dw_mipi_dsi_encoder_helper_funcs);

 return 0;
}
