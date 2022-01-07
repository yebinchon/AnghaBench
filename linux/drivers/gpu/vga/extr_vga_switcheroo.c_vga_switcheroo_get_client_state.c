
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vga_switcheroo_client {int dummy; } ;
struct pci_dev {int dummy; } ;
typedef enum vga_switcheroo_state { ____Placeholder_vga_switcheroo_state } vga_switcheroo_state ;
struct TYPE_2__ {int clients; } ;


 int VGA_SWITCHEROO_NOT_FOUND ;
 struct vga_switcheroo_client* find_client_from_pci (int *,struct pci_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vga_switcheroo_pwr_state (struct vga_switcheroo_client*) ;
 int vgasr_mutex ;
 TYPE_1__ vgasr_priv ;

enum vga_switcheroo_state vga_switcheroo_get_client_state(struct pci_dev *pdev)
{
 struct vga_switcheroo_client *client;
 enum vga_switcheroo_state ret;

 mutex_lock(&vgasr_mutex);
 client = find_client_from_pci(&vgasr_priv.clients, pdev);
 if (!client)
  ret = VGA_SWITCHEROO_NOT_FOUND;
 else
  ret = vga_switcheroo_pwr_state(client);
 mutex_unlock(&vgasr_mutex);
 return ret;
}
