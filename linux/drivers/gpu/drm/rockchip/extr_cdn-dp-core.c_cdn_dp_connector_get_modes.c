
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edid {int height_cm; int width_cm; } ;
struct drm_connector {int dummy; } ;
struct cdn_dp_device {int lock; int sink_has_audio; int dev; struct edid* edid; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*,int ,int ) ;
 struct cdn_dp_device* connector_to_dp (struct drm_connector*) ;
 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_connector_update_edid_property (struct drm_connector*,struct edid*) ;
 int drm_detect_monitor_audio (struct edid*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cdn_dp_connector_get_modes(struct drm_connector *connector)
{
 struct cdn_dp_device *dp = connector_to_dp(connector);
 struct edid *edid;
 int ret = 0;

 mutex_lock(&dp->lock);
 edid = dp->edid;
 if (edid) {
  DRM_DEV_DEBUG_KMS(dp->dev, "got edid: width[%d] x height[%d]\n",
      edid->width_cm, edid->height_cm);

  dp->sink_has_audio = drm_detect_monitor_audio(edid);
  ret = drm_add_edid_modes(connector, edid);
  if (ret)
   drm_connector_update_edid_property(connector,
        edid);
 }
 mutex_unlock(&dp->lock);

 return ret;
}
