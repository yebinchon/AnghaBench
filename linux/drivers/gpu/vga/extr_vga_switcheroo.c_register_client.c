
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vga_switcheroo_client_ops {int dummy; } ;
struct vga_switcheroo_client {int id; int active; int driver_power_control; int list; struct pci_dev* vga_dev; struct vga_switcheroo_client_ops const* ops; struct pci_dev* pdev; int pwr_state; } ;
struct pci_dev {int dummy; } ;
typedef enum vga_switcheroo_client_id { ____Placeholder_vga_switcheroo_client_id } vga_switcheroo_client_id ;
struct TYPE_2__ {int registered_clients; int clients; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int VGA_SWITCHEROO_ON ;
 scalar_t__ client_is_vga (struct vga_switcheroo_client*) ;
 struct vga_switcheroo_client* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*) ;
 int vga_switcheroo_enable () ;
 scalar_t__ vga_switcheroo_ready () ;
 int vgasr_mutex ;
 TYPE_1__ vgasr_priv ;

__attribute__((used)) static int register_client(struct pci_dev *pdev,
      const struct vga_switcheroo_client_ops *ops,
      enum vga_switcheroo_client_id id,
      struct pci_dev *vga_dev,
      bool active,
      bool driver_power_control)
{
 struct vga_switcheroo_client *client;

 client = kzalloc(sizeof(*client), GFP_KERNEL);
 if (!client)
  return -ENOMEM;

 client->pwr_state = VGA_SWITCHEROO_ON;
 client->pdev = pdev;
 client->ops = ops;
 client->id = id;
 client->active = active;
 client->driver_power_control = driver_power_control;
 client->vga_dev = vga_dev;

 mutex_lock(&vgasr_mutex);
 list_add_tail(&client->list, &vgasr_priv.clients);
 if (client_is_vga(client))
  vgasr_priv.registered_clients++;

 if (vga_switcheroo_ready()) {
  pr_info("enabled\n");
  vga_switcheroo_enable();
 }
 mutex_unlock(&vgasr_mutex);
 return 0;
}
