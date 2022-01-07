
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct imx_ldb_channel {struct drm_encoder encoder; } ;
struct drm_connector {int dummy; } ;


 struct imx_ldb_channel* con_to_imx_ldb_ch (struct drm_connector*) ;

__attribute__((used)) static struct drm_encoder *imx_ldb_connector_best_encoder(
  struct drm_connector *connector)
{
 struct imx_ldb_channel *imx_ldb_ch = con_to_imx_ldb_ch(connector);

 return &imx_ldb_ch->encoder;
}
