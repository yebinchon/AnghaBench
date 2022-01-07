
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int active; int mux_hw_lock; int * handler; scalar_t__ handler_flags; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*) ;
 int vga_switcheroo_debugfs_fini (TYPE_1__*) ;
 int vgasr_mutex ;
 TYPE_1__ vgasr_priv ;

void vga_switcheroo_unregister_handler(void)
{
 mutex_lock(&vgasr_mutex);
 mutex_lock(&vgasr_priv.mux_hw_lock);
 vgasr_priv.handler_flags = 0;
 vgasr_priv.handler = ((void*)0);
 if (vgasr_priv.active) {
  pr_info("disabled\n");
  vga_switcheroo_debugfs_fini(&vgasr_priv);
  vgasr_priv.active = 0;
 }
 mutex_unlock(&vgasr_priv.mux_hw_lock);
 mutex_unlock(&vgasr_mutex);
}
