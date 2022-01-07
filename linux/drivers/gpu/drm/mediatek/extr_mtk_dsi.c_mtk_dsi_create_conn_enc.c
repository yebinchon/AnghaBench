
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int possible_crtcs; } ;
struct mtk_dsi {TYPE_1__ encoder; scalar_t__ bridge; } ;
struct drm_device {int dummy; } ;


 int DRM_ERROR (char*) ;
 int DRM_MODE_ENCODER_DSI ;
 int drm_bridge_attach (TYPE_1__*,scalar_t__,int *) ;
 int drm_encoder_cleanup (TYPE_1__*) ;
 int drm_encoder_helper_add (TYPE_1__*,int *) ;
 int drm_encoder_init (struct drm_device*,TYPE_1__*,int *,int ,int *) ;
 int mtk_dsi_create_connector (struct drm_device*,struct mtk_dsi*) ;
 int mtk_dsi_encoder_funcs ;
 int mtk_dsi_encoder_helper_funcs ;

__attribute__((used)) static int mtk_dsi_create_conn_enc(struct drm_device *drm, struct mtk_dsi *dsi)
{
 int ret;

 ret = drm_encoder_init(drm, &dsi->encoder, &mtk_dsi_encoder_funcs,
          DRM_MODE_ENCODER_DSI, ((void*)0));
 if (ret) {
  DRM_ERROR("Failed to encoder init to drm\n");
  return ret;
 }
 drm_encoder_helper_add(&dsi->encoder, &mtk_dsi_encoder_helper_funcs);





 dsi->encoder.possible_crtcs = 1;


 if (dsi->bridge) {
  ret = drm_bridge_attach(&dsi->encoder, dsi->bridge, ((void*)0));
  if (ret) {
   DRM_ERROR("Failed to attach bridge to drm\n");
   goto err_encoder_cleanup;
  }
 } else {

  ret = mtk_dsi_create_connector(drm, dsi);
  if (ret)
   goto err_encoder_cleanup;
 }

 return 0;

err_encoder_cleanup:
 drm_encoder_cleanup(&dsi->encoder);
 return ret;
}
