
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vga_switcheroo_client {int list; } ;
struct pci_dev {int dummy; } ;
struct TYPE_3__ {int registered_clients; int active; int clients; } ;


 scalar_t__ client_is_vga (struct vga_switcheroo_client*) ;
 struct vga_switcheroo_client* find_client_from_pci (int *,struct pci_dev*) ;
 int kfree (struct vga_switcheroo_client*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*) ;
 int vga_switcheroo_debugfs_fini (TYPE_1__*) ;
 int vgasr_mutex ;
 TYPE_1__ vgasr_priv ;

void vga_switcheroo_unregister_client(struct pci_dev *pdev)
{
 struct vga_switcheroo_client *client;

 mutex_lock(&vgasr_mutex);
 client = find_client_from_pci(&vgasr_priv.clients, pdev);
 if (client) {
  if (client_is_vga(client))
   vgasr_priv.registered_clients--;
  list_del(&client->list);
  kfree(client);
 }
 if (vgasr_priv.active && vgasr_priv.registered_clients < 2) {
  pr_info("disabled\n");
  vga_switcheroo_debugfs_fini(&vgasr_priv);
  vgasr_priv.active = 0;
 }
 mutex_unlock(&vgasr_mutex);
}
