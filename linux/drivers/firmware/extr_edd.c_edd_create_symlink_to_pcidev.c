
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct pci_dev {TYPE_1__ dev; } ;
struct edd_device {int kobj; } ;


 struct pci_dev* edd_get_pci_dev (struct edd_device*) ;
 int pci_dev_put (struct pci_dev*) ;
 int sysfs_create_link (int *,int *,char*) ;

__attribute__((used)) static int
edd_create_symlink_to_pcidev(struct edd_device *edev)
{

 struct pci_dev *pci_dev = edd_get_pci_dev(edev);
 int ret;
 if (!pci_dev)
  return 1;
 ret = sysfs_create_link(&edev->kobj,&pci_dev->dev.kobj,"pci_dev");
 pci_dev_put(pci_dev);
 return ret;
}
