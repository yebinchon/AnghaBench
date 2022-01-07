
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct device_domain_info {scalar_t__ pasid_enabled; scalar_t__ pri_enabled; int domain; scalar_t__ ats_enabled; int dev; } ;


 int assert_spin_locked (int *) ;
 int dev_is_pci (int ) ;
 int device_domain_lock ;
 int domain_update_iotlb (int ) ;
 int pci_disable_ats (struct pci_dev*) ;
 int pci_disable_pasid (struct pci_dev*) ;
 int pci_disable_pri (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void iommu_disable_dev_iotlb(struct device_domain_info *info)
{
 struct pci_dev *pdev;

 assert_spin_locked(&device_domain_lock);

 if (!dev_is_pci(info->dev))
  return;

 pdev = to_pci_dev(info->dev);

 if (info->ats_enabled) {
  pci_disable_ats(pdev);
  info->ats_enabled = 0;
  domain_update_iotlb(info->domain);
 }
}
