
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int fb_helper; } ;


 int drm_fb_helper_hotplug_event (int ) ;

void drm_fb_helper_output_poll_changed(struct drm_device *dev)
{
 drm_fb_helper_hotplug_event(dev->fb_helper);
}
