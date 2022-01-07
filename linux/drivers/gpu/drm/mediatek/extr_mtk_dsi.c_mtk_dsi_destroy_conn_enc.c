
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dev; } ;
struct mtk_dsi {scalar_t__ panel; TYPE_1__ conn; int encoder; } ;


 int drm_connector_cleanup (TYPE_1__*) ;
 int drm_encoder_cleanup (int *) ;
 int drm_panel_detach (scalar_t__) ;

__attribute__((used)) static void mtk_dsi_destroy_conn_enc(struct mtk_dsi *dsi)
{
 drm_encoder_cleanup(&dsi->encoder);

 if (dsi->conn.dev)
  drm_connector_cleanup(&dsi->conn);
 if (dsi->panel)
  drm_panel_detach(dsi->panel);
}
