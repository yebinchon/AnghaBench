
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {int dummy; } ;


 int DBG (char*) ;
 int dsi_mgr_connector_get_id (struct drm_connector*) ;
 struct msm_dsi* dsi_mgr_get_dsi (int) ;
 struct drm_encoder* msm_dsi_get_encoder (struct msm_dsi*) ;

__attribute__((used)) static struct drm_encoder *
dsi_mgr_connector_best_encoder(struct drm_connector *connector)
{
 int id = dsi_mgr_connector_get_id(connector);
 struct msm_dsi *msm_dsi = dsi_mgr_get_dsi(id);

 DBG("");
 return msm_dsi_get_encoder(msm_dsi);
}
