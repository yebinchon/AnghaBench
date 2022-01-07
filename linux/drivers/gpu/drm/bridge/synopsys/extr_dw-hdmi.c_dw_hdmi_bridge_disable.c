
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int disabled; int mutex; } ;
struct drm_bridge {struct dw_hdmi* driver_private; } ;


 int dw_hdmi_update_phy_mask (struct dw_hdmi*) ;
 int dw_hdmi_update_power (struct dw_hdmi*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void dw_hdmi_bridge_disable(struct drm_bridge *bridge)
{
 struct dw_hdmi *hdmi = bridge->driver_private;

 mutex_lock(&hdmi->mutex);
 hdmi->disabled = 1;
 dw_hdmi_update_power(hdmi);
 dw_hdmi_update_phy_mask(hdmi);
 mutex_unlock(&hdmi->mutex);
}
