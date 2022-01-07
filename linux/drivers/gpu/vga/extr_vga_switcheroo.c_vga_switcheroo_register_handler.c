
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vga_switcheroo_handler {int dummy; } ;
typedef enum vga_switcheroo_handler_flags_t { ____Placeholder_vga_switcheroo_handler_flags_t } vga_switcheroo_handler_flags_t ;
struct TYPE_2__ {int handler_flags; struct vga_switcheroo_handler const* handler; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*) ;
 int vga_switcheroo_enable () ;
 scalar_t__ vga_switcheroo_ready () ;
 int vgasr_mutex ;
 TYPE_1__ vgasr_priv ;

int vga_switcheroo_register_handler(
     const struct vga_switcheroo_handler *handler,
     enum vga_switcheroo_handler_flags_t handler_flags)
{
 mutex_lock(&vgasr_mutex);
 if (vgasr_priv.handler) {
  mutex_unlock(&vgasr_mutex);
  return -EINVAL;
 }

 vgasr_priv.handler = handler;
 vgasr_priv.handler_flags = handler_flags;
 if (vga_switcheroo_ready()) {
  pr_info("enabled\n");
  vga_switcheroo_enable();
 }
 mutex_unlock(&vgasr_mutex);
 return 0;
}
