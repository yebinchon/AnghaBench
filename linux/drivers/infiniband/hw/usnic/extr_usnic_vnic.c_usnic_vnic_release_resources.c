
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usnic_vnic {TYPE_1__* bar; int vdev; int * chunks; } ;
struct pci_dev {int dummy; } ;
typedef enum usnic_vnic_res_type { ____Placeholder_usnic_vnic_res_type } usnic_vnic_res_type ;
struct TYPE_2__ {int vaddr; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int IORESOURCE_MEM ;
 int USNIC_VNIC_RES_TYPE_EOL ;
 int USNIC_VNIC_RES_TYPE_MAX ;
 int iounmap (int ) ;
 int pci_resource_flags (struct pci_dev*,int) ;
 int usnic_vnic_free_res_chunk (int *) ;
 struct pci_dev* usnic_vnic_get_pdev (struct usnic_vnic*) ;
 int vnic_dev_unregister (int ) ;

__attribute__((used)) static void usnic_vnic_release_resources(struct usnic_vnic *vnic)
{
 int i;
 struct pci_dev *pdev;
 enum usnic_vnic_res_type res_type;

 pdev = usnic_vnic_get_pdev(vnic);

 for (res_type = USNIC_VNIC_RES_TYPE_EOL + 1;
   res_type < USNIC_VNIC_RES_TYPE_MAX; res_type++)
  usnic_vnic_free_res_chunk(&vnic->chunks[res_type]);

 vnic_dev_unregister(vnic->vdev);

 for (i = 0; i < ARRAY_SIZE(vnic->bar); i++) {
  if (!(pci_resource_flags(pdev, i) & IORESOURCE_MEM))
   continue;
  iounmap(vnic->bar[i].vaddr);
 }
}
