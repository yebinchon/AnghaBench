
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int vga_switcheroo_process_delayed_switch () ;

void
nouveau_vga_lastclose(struct drm_device *dev)
{
 vga_switcheroo_process_delayed_switch();
}
