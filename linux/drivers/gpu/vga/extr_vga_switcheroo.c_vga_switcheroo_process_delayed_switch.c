
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vga_switcheroo_client {int dummy; } ;
struct TYPE_2__ {int delayed_switch_active; int delayed_client_id; int clients; } ;


 int EINVAL ;
 int check_can_switch () ;
 struct vga_switcheroo_client* find_client_from_id (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int) ;
 int pr_info (char*,int ) ;
 int vga_switchto_stage2 (struct vga_switcheroo_client*) ;
 int vgasr_mutex ;
 TYPE_1__ vgasr_priv ;

int vga_switcheroo_process_delayed_switch(void)
{
 struct vga_switcheroo_client *client;
 int ret;
 int err = -EINVAL;

 mutex_lock(&vgasr_mutex);
 if (!vgasr_priv.delayed_switch_active)
  goto err;

 pr_info("processing delayed switch to %d\n",
  vgasr_priv.delayed_client_id);

 client = find_client_from_id(&vgasr_priv.clients,
         vgasr_priv.delayed_client_id);
 if (!client || !check_can_switch())
  goto err;

 ret = vga_switchto_stage2(client);
 if (ret)
  pr_err("delayed switching failed stage 2 %d\n", ret);

 vgasr_priv.delayed_switch_active = 0;
 err = 0;
err:
 mutex_unlock(&vgasr_mutex);
 return err;
}
