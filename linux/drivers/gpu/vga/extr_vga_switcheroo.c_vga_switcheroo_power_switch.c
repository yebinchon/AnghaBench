
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vga_switcheroo_client {int id; int driver_power_control; } ;
struct pci_dev {int dummy; } ;
typedef enum vga_switcheroo_state { ____Placeholder_vga_switcheroo_state } vga_switcheroo_state ;
struct TYPE_4__ {TYPE_1__* handler; int clients; } ;
struct TYPE_3__ {int (* power_state ) (int ,int) ;} ;


 struct vga_switcheroo_client* find_client_from_pci (int *,struct pci_dev*) ;
 int stub1 (int ,int) ;
 TYPE_2__ vgasr_priv ;

__attribute__((used)) static void vga_switcheroo_power_switch(struct pci_dev *pdev,
     enum vga_switcheroo_state state)
{
 struct vga_switcheroo_client *client;

 if (!vgasr_priv.handler->power_state)
  return;

 client = find_client_from_pci(&vgasr_priv.clients, pdev);
 if (!client)
  return;

 if (!client->driver_power_control)
  return;

 vgasr_priv.handler->power_state(client->id, state);
}
