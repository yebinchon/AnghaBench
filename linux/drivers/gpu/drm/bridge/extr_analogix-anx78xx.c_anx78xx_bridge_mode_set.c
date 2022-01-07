
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_avi_infoframe {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_bridge {int dummy; } ;
struct anx78xx {int lock; int connector; int powered; } ;


 int DRM_ERROR (char*,int) ;
 scalar_t__ WARN_ON (int) ;
 int anx78xx_send_video_infoframe (struct anx78xx*,struct hdmi_avi_infoframe*) ;
 struct anx78xx* bridge_to_anx78xx (struct drm_bridge*) ;
 int drm_hdmi_avi_infoframe_from_display_mode (struct hdmi_avi_infoframe*,int *,struct drm_display_mode const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void anx78xx_bridge_mode_set(struct drm_bridge *bridge,
    const struct drm_display_mode *mode,
    const struct drm_display_mode *adjusted_mode)
{
 struct anx78xx *anx78xx = bridge_to_anx78xx(bridge);
 struct hdmi_avi_infoframe frame;
 int err;

 if (WARN_ON(!anx78xx->powered))
  return;

 mutex_lock(&anx78xx->lock);

 err = drm_hdmi_avi_infoframe_from_display_mode(&frame,
             &anx78xx->connector,
             adjusted_mode);
 if (err) {
  DRM_ERROR("Failed to setup AVI infoframe: %d\n", err);
  goto unlock;
 }

 err = anx78xx_send_video_infoframe(anx78xx, &frame);
 if (err)
  DRM_ERROR("Failed to send AVI infoframe: %d\n", err);

unlock:
 mutex_unlock(&anx78xx->lock);
}
