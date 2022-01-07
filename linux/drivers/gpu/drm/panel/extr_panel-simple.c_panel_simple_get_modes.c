
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_simple {scalar_t__ ddc; } ;
struct edid {int dummy; } ;
struct drm_panel {int connector; } ;


 scalar_t__ drm_add_edid_modes (int ,struct edid*) ;
 int drm_connector_update_edid_property (int ,struct edid*) ;
 struct edid* drm_get_edid (int ,scalar_t__) ;
 int kfree (struct edid*) ;
 scalar_t__ panel_simple_get_non_edid_modes (struct panel_simple*) ;
 struct panel_simple* to_panel_simple (struct drm_panel*) ;

__attribute__((used)) static int panel_simple_get_modes(struct drm_panel *panel)
{
 struct panel_simple *p = to_panel_simple(panel);
 int num = 0;


 if (p->ddc) {
  struct edid *edid = drm_get_edid(panel->connector, p->ddc);
  drm_connector_update_edid_property(panel->connector, edid);
  if (edid) {
   num += drm_add_edid_modes(panel->connector, edid);
   kfree(edid);
  }
 }


 num += panel_simple_get_non_edid_modes(p);

 return num;
}
