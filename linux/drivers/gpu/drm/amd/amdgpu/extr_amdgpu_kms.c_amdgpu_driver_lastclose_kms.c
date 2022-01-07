
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int drm_fb_helper_lastclose (struct drm_device*) ;
 int vga_switcheroo_process_delayed_switch () ;

void amdgpu_driver_lastclose_kms(struct drm_device *dev)
{
 drm_fb_helper_lastclose(dev);
 vga_switcheroo_process_delayed_switch();
}
