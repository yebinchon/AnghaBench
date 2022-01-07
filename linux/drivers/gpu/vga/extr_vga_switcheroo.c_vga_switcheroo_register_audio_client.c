
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vga_switcheroo_client_ops {int (* gpu_bound ) (struct pci_dev*,int) ;} ;
struct pci_dev {int dummy; } ;
typedef enum vga_switcheroo_client_id { ____Placeholder_vga_switcheroo_client_id } vga_switcheroo_client_id ;
struct TYPE_4__ {TYPE_1__* handler; scalar_t__ active; } ;
struct TYPE_3__ {int (* get_client_id ) (struct pci_dev*) ;} ;


 int EINVAL ;
 int ID_BIT_AUDIO ;
 int VGA_SWITCHEROO_UNKNOWN_ID ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int register_client (struct pci_dev*,struct vga_switcheroo_client_ops const*,int,struct pci_dev*,int,int) ;
 int stub1 (struct pci_dev*) ;
 int stub2 (struct pci_dev*,int) ;
 int vgasr_mutex ;
 TYPE_2__ vgasr_priv ;

int vga_switcheroo_register_audio_client(struct pci_dev *pdev,
   const struct vga_switcheroo_client_ops *ops,
   struct pci_dev *vga_dev)
{
 enum vga_switcheroo_client_id id = VGA_SWITCHEROO_UNKNOWN_ID;
 mutex_lock(&vgasr_mutex);
 if (vgasr_priv.active) {
  id = vgasr_priv.handler->get_client_id(vga_dev);
  if (id < 0) {
   mutex_unlock(&vgasr_mutex);
   return -EINVAL;
  }

  if (ops->gpu_bound)
   ops->gpu_bound(pdev, id);
 }
 mutex_unlock(&vgasr_mutex);

 return register_client(pdev, ops, id | ID_BIT_AUDIO, vga_dev,
          0, 1);
}
