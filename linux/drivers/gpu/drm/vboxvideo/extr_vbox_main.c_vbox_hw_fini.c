
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pdev; } ;
struct vbox_private {int guest_heap; TYPE_1__ ddev; int guest_pool; } ;


 int gen_pool_destroy (int ) ;
 int pci_iounmap (int ,int ) ;
 int vbox_accel_fini (struct vbox_private*) ;

void vbox_hw_fini(struct vbox_private *vbox)
{
 vbox_accel_fini(vbox);
 gen_pool_destroy(vbox->guest_pool);
 pci_iounmap(vbox->ddev.pdev, vbox->guest_heap);
}
