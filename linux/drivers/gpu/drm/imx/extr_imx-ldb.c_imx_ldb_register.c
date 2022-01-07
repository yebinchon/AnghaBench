
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct imx_ldb_channel {int chno; int connector; scalar_t__ panel; int ddc; scalar_t__ bridge; struct drm_encoder encoder; int child; struct imx_ldb* ldb; } ;
struct imx_ldb {int ldb_ctrl; } ;
struct drm_device {int dummy; } ;


 int DRM_ERROR (char*) ;
 int DRM_MODE_CONNECTOR_LVDS ;
 int DRM_MODE_ENCODER_LVDS ;
 int LDB_SPLIT_MODE_EN ;
 int drm_bridge_attach (struct drm_encoder*,scalar_t__,int *) ;
 int drm_connector_attach_encoder (int *,struct drm_encoder*) ;
 int drm_connector_helper_add (int *,int *) ;
 int drm_connector_init_with_ddc (struct drm_device*,int *,int *,int ,int ) ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 int drm_panel_attach (scalar_t__,int *) ;
 int imx_drm_encoder_parse_of (struct drm_device*,struct drm_encoder*,int ) ;
 int imx_ldb_connector_funcs ;
 int imx_ldb_connector_helper_funcs ;
 int imx_ldb_encoder_funcs ;
 int imx_ldb_encoder_helper_funcs ;
 int imx_ldb_get_clk (struct imx_ldb*,int) ;

__attribute__((used)) static int imx_ldb_register(struct drm_device *drm,
 struct imx_ldb_channel *imx_ldb_ch)
{
 struct imx_ldb *ldb = imx_ldb_ch->ldb;
 struct drm_encoder *encoder = &imx_ldb_ch->encoder;
 int ret;

 ret = imx_drm_encoder_parse_of(drm, encoder, imx_ldb_ch->child);
 if (ret)
  return ret;

 ret = imx_ldb_get_clk(ldb, imx_ldb_ch->chno);
 if (ret)
  return ret;

 if (ldb->ldb_ctrl & LDB_SPLIT_MODE_EN) {
  ret = imx_ldb_get_clk(ldb, 1);
  if (ret)
   return ret;
 }

 drm_encoder_helper_add(encoder, &imx_ldb_encoder_helper_funcs);
 drm_encoder_init(drm, encoder, &imx_ldb_encoder_funcs,
    DRM_MODE_ENCODER_LVDS, ((void*)0));

 if (imx_ldb_ch->bridge) {
  ret = drm_bridge_attach(&imx_ldb_ch->encoder,
     imx_ldb_ch->bridge, ((void*)0));
  if (ret) {
   DRM_ERROR("Failed to initialize bridge with drm\n");
   return ret;
  }
 } else {






  drm_connector_helper_add(&imx_ldb_ch->connector,
    &imx_ldb_connector_helper_funcs);
  drm_connector_init_with_ddc(drm, &imx_ldb_ch->connector,
         &imx_ldb_connector_funcs,
         DRM_MODE_CONNECTOR_LVDS,
         imx_ldb_ch->ddc);
  drm_connector_attach_encoder(&imx_ldb_ch->connector, encoder);
 }

 if (imx_ldb_ch->panel) {
  ret = drm_panel_attach(imx_ldb_ch->panel,
           &imx_ldb_ch->connector);
  if (ret)
   return ret;
 }

 return 0;
}
