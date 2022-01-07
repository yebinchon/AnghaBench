
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi {int cec_notifier_mutex; int * cec_notifier; } ;
struct drm_bridge {struct dw_hdmi* driver_private; } ;


 int cec_notifier_conn_unregister (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void dw_hdmi_bridge_detach(struct drm_bridge *bridge)
{
 struct dw_hdmi *hdmi = bridge->driver_private;

 mutex_lock(&hdmi->cec_notifier_mutex);
 cec_notifier_conn_unregister(hdmi->cec_notifier);
 hdmi->cec_notifier = ((void*)0);
 mutex_unlock(&hdmi->cec_notifier_mutex);
}
