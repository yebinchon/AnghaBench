
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_vnic {int vdev; } ;
struct pci_dev {int dummy; } ;


 struct pci_dev* vnic_dev_get_pdev (int ) ;

struct pci_dev *usnic_vnic_get_pdev(struct usnic_vnic *vnic)
{
 return vnic_dev_get_pdev(vnic->vdev);
}
