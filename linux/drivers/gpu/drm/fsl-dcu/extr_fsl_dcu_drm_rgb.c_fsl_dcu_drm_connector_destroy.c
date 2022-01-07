
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_dcu_drm_connector {int panel; } ;
struct drm_connector {int dummy; } ;


 int drm_connector_cleanup (struct drm_connector*) ;
 int drm_connector_unregister (struct drm_connector*) ;
 int drm_panel_detach (int ) ;
 struct fsl_dcu_drm_connector* to_fsl_dcu_connector (struct drm_connector*) ;

__attribute__((used)) static void fsl_dcu_drm_connector_destroy(struct drm_connector *connector)
{
 struct fsl_dcu_drm_connector *fsl_con = to_fsl_dcu_connector(connector);

 drm_connector_unregister(connector);
 drm_panel_detach(fsl_con->panel);
 drm_connector_cleanup(connector);
}
