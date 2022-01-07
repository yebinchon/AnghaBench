
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ddc; } ;
struct tc_data {struct edid* edid; TYPE_1__ aux; int panel; int dev; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;


 struct tc_data* connector_to_tc (struct drm_connector*) ;
 int dev_err (int ,char*,int) ;
 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_connector_update_edid_property (struct drm_connector*,struct edid*) ;
 struct edid* drm_get_edid (struct drm_connector*,int *) ;
 int drm_panel_get_modes (int ) ;
 int kfree (struct edid*) ;
 int tc_get_display_props (struct tc_data*) ;

__attribute__((used)) static int tc_connector_get_modes(struct drm_connector *connector)
{
 struct tc_data *tc = connector_to_tc(connector);
 struct edid *edid;
 int count;
 int ret;

 ret = tc_get_display_props(tc);
 if (ret < 0) {
  dev_err(tc->dev, "failed to read display props: %d\n", ret);
  return 0;
 }

 count = drm_panel_get_modes(tc->panel);
 if (count > 0)
  return count;

 edid = drm_get_edid(connector, &tc->aux.ddc);

 kfree(tc->edid);
 tc->edid = edid;
 if (!edid)
  return 0;

 drm_connector_update_edid_property(connector, edid);
 count = drm_add_edid_modes(connector, edid);

 return count;
}
