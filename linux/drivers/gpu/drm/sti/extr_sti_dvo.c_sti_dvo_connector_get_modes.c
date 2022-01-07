
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_dvo_connector {struct sti_dvo* dvo; } ;
struct sti_dvo {scalar_t__ panel; } ;
struct drm_connector {int dummy; } ;


 int drm_panel_get_modes (scalar_t__) ;
 struct sti_dvo_connector* to_sti_dvo_connector (struct drm_connector*) ;

__attribute__((used)) static int sti_dvo_connector_get_modes(struct drm_connector *connector)
{
 struct sti_dvo_connector *dvo_connector
  = to_sti_dvo_connector(connector);
 struct sti_dvo *dvo = dvo_connector->dvo;

 if (dvo->panel)
  return drm_panel_get_modes(dvo->panel);

 return 0;
}
