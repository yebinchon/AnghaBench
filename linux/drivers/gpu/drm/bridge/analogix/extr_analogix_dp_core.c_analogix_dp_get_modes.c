
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_3__ {int ddc; } ;
struct analogix_dp_device {TYPE_2__* plat_data; int connector; int dev; TYPE_1__ aux; } ;
struct TYPE_4__ {scalar_t__ (* get_modes ) (TYPE_2__*,struct drm_connector*) ;scalar_t__ panel; } ;


 int DRM_ERROR (char*,int) ;
 int analogix_dp_prepare_panel (struct analogix_dp_device*,int,int) ;
 scalar_t__ drm_add_edid_modes (int *,struct edid*) ;
 int drm_connector_update_edid_property (int *,struct edid*) ;
 struct edid* drm_get_edid (struct drm_connector*,int *) ;
 scalar_t__ drm_panel_get_modes (scalar_t__) ;
 int kfree (struct edid*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 scalar_t__ stub1 (TYPE_2__*,struct drm_connector*) ;
 struct analogix_dp_device* to_dp (struct drm_connector*) ;

__attribute__((used)) static int analogix_dp_get_modes(struct drm_connector *connector)
{
 struct analogix_dp_device *dp = to_dp(connector);
 struct edid *edid;
 int ret, num_modes = 0;

 if (dp->plat_data->panel) {
  num_modes += drm_panel_get_modes(dp->plat_data->panel);
 } else {
  ret = analogix_dp_prepare_panel(dp, 1, 0);
  if (ret) {
   DRM_ERROR("Failed to prepare panel (%d)\n", ret);
   return 0;
  }

  pm_runtime_get_sync(dp->dev);
  edid = drm_get_edid(connector, &dp->aux.ddc);
  pm_runtime_put(dp->dev);
  if (edid) {
   drm_connector_update_edid_property(&dp->connector,
          edid);
   num_modes += drm_add_edid_modes(&dp->connector, edid);
   kfree(edid);
  }

  ret = analogix_dp_prepare_panel(dp, 0, 0);
  if (ret)
   DRM_ERROR("Failed to unprepare panel (%d)\n", ret);
 }

 if (dp->plat_data->get_modes)
  num_modes += dp->plat_data->get_modes(dp->plat_data, connector);

 return num_modes;
}
