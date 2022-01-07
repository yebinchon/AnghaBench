
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsi_connector {int id; } ;
struct drm_connector {int dummy; } ;


 struct dsi_connector* to_dsi_connector (struct drm_connector*) ;

__attribute__((used)) static inline int dsi_mgr_connector_get_id(struct drm_connector *connector)
{
 struct dsi_connector *dsi_connector = to_dsi_connector(connector);
 return dsi_connector->id;
}
