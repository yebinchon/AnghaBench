
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pdev; } ;
struct vbox_private {unsigned int num_crtcs; int vbva_buffers; TYPE_1__ ddev; int guest_pool; int * vbva_info; } ;


 int pci_iounmap (int ,int ) ;
 int vbva_disable (int *,int ,unsigned int) ;

__attribute__((used)) static void vbox_accel_fini(struct vbox_private *vbox)
{
 unsigned int i;

 for (i = 0; i < vbox->num_crtcs; ++i)
  vbva_disable(&vbox->vbva_info[i], vbox->guest_pool, i);

 pci_iounmap(vbox->ddev.pdev, vbox->vbva_buffers);
}
