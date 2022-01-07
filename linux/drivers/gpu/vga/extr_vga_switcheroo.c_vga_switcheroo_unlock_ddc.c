
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
typedef enum vga_switcheroo_client_id { ____Placeholder_vga_switcheroo_client_id } vga_switcheroo_client_id ;
struct TYPE_4__ {int old_ddc_owner; int mux_hw_lock; TYPE_1__* handler; } ;
struct TYPE_3__ {int (* get_client_id ) (struct pci_dev*) ;int (* switch_ddc ) (int) ;} ;


 int EINVAL ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int mutex_is_locked (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct pci_dev*) ;
 int stub2 (int) ;
 TYPE_2__ vgasr_priv ;

int vga_switcheroo_unlock_ddc(struct pci_dev *pdev)
{
 enum vga_switcheroo_client_id id;
 int ret = vgasr_priv.old_ddc_owner;

 if (WARN_ON_ONCE(!mutex_is_locked(&vgasr_priv.mux_hw_lock)))
  return -EINVAL;

 if (vgasr_priv.old_ddc_owner >= 0) {
  id = vgasr_priv.handler->get_client_id(pdev);
  if (vgasr_priv.old_ddc_owner != id)
   ret = vgasr_priv.handler->switch_ddc(
           vgasr_priv.old_ddc_owner);
 }
 mutex_unlock(&vgasr_priv.mux_hw_lock);
 return ret;
}
