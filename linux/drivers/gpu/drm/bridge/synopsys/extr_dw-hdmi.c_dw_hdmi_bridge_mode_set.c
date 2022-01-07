
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int mutex; int previous_mode; } ;
struct drm_display_mode {int dummy; } ;
struct drm_bridge {struct dw_hdmi* driver_private; } ;


 int memcpy (int *,struct drm_display_mode const*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void dw_hdmi_bridge_mode_set(struct drm_bridge *bridge,
        const struct drm_display_mode *orig_mode,
        const struct drm_display_mode *mode)
{
 struct dw_hdmi *hdmi = bridge->driver_private;

 mutex_lock(&hdmi->mutex);


 memcpy(&hdmi->previous_mode, mode, sizeof(hdmi->previous_mode));

 mutex_unlock(&hdmi->mutex);
}
