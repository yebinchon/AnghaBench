
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_du_device {int ddev; } ;
struct TYPE_2__ {int possible_crtcs; } ;
struct drm_writeback_connector {int base; TYPE_1__ encoder; } ;
struct rcar_du_crtc {int crtc; struct drm_writeback_connector writeback; } ;


 int ARRAY_SIZE (int ) ;
 int drm_connector_helper_add (int *,int *) ;
 int drm_crtc_index (int *) ;
 int drm_writeback_connector_init (int ,struct drm_writeback_connector*,int *,int *,int ,int ) ;
 int rcar_du_wb_conn_funcs ;
 int rcar_du_wb_conn_helper_funcs ;
 int rcar_du_wb_enc_helper_funcs ;
 int writeback_formats ;

int rcar_du_writeback_init(struct rcar_du_device *rcdu,
      struct rcar_du_crtc *rcrtc)
{
 struct drm_writeback_connector *wb_conn = &rcrtc->writeback;

 wb_conn->encoder.possible_crtcs = 1 << drm_crtc_index(&rcrtc->crtc);
 drm_connector_helper_add(&wb_conn->base,
     &rcar_du_wb_conn_helper_funcs);

 return drm_writeback_connector_init(rcdu->ddev, wb_conn,
         &rcar_du_wb_conn_funcs,
         &rcar_du_wb_enc_helper_funcs,
         writeback_formats,
         ARRAY_SIZE(writeback_formats));
}
