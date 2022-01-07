
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_dcu_drm_connector {int panel; } ;
struct drm_connector {int dummy; } ;


 int drm_panel_get_modes (int ) ;
 struct fsl_dcu_drm_connector* to_fsl_dcu_connector (struct drm_connector*) ;

__attribute__((used)) static int fsl_dcu_drm_connector_get_modes(struct drm_connector *connector)
{
 struct fsl_dcu_drm_connector *fsl_connector;

 fsl_connector = to_fsl_dcu_connector(connector);
 return drm_panel_get_modes(fsl_connector->panel);
}
