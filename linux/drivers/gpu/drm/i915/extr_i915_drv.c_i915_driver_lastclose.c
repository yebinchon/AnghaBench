
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int intel_fbdev_restore_mode (struct drm_device*) ;
 int vga_switcheroo_process_delayed_switch () ;

__attribute__((used)) static void i915_driver_lastclose(struct drm_device *dev)
{
 intel_fbdev_restore_mode(dev);
 vga_switcheroo_process_delayed_switch();
}
