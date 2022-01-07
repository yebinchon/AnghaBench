
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_fbdev {int hpd_suspended; int hpd_waiting; int helper; int hpd_lock; } ;


 int DRM_DEBUG_KMS (char*) ;
 int FBINFO_STATE_SUSPENDED ;
 int drm_fb_helper_hotplug_event (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void intel_fbdev_hpd_set_suspend(struct intel_fbdev *ifbdev, int state)
{
 bool send_hpd = 0;

 mutex_lock(&ifbdev->hpd_lock);
 ifbdev->hpd_suspended = state == FBINFO_STATE_SUSPENDED;
 send_hpd = !ifbdev->hpd_suspended && ifbdev->hpd_waiting;
 ifbdev->hpd_waiting = 0;
 mutex_unlock(&ifbdev->hpd_lock);

 if (send_hpd) {
  DRM_DEBUG_KMS("Handling delayed fbcon HPD event\n");
  drm_fb_helper_hotplug_event(&ifbdev->helper);
 }
}
