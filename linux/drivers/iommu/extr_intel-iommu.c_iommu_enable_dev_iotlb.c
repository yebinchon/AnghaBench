
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int untrusted; } ;
struct device_domain_info {int pasid_supported; int pasid_enabled; int pri_enabled; int ats_enabled; int ats_qdep; int domain; scalar_t__ ats_supported; scalar_t__ pri_supported; scalar_t__ pfsid; TYPE_1__* iommu; int dev; } ;
struct TYPE_2__ {int ecap; } ;


 int VTD_PAGE_SHIFT ;
 int assert_spin_locked (int *) ;
 int dev_is_pci (int ) ;
 int device_domain_lock ;
 int domain_update_iotlb (int ) ;
 int ecap_dit (int ) ;
 scalar_t__ pci_ats_page_aligned (struct pci_dev*) ;
 int pci_ats_queue_depth (struct pci_dev*) ;
 scalar_t__ pci_dev_id (struct pci_dev*) ;
 int pci_enable_ats (struct pci_dev*,int ) ;
 int pci_enable_pasid (struct pci_dev*,int) ;
 int pci_enable_pri (struct pci_dev*,int) ;
 struct pci_dev* pci_physfn (struct pci_dev*) ;
 int pci_prg_resp_pasid_required (struct pci_dev*) ;
 int pci_reset_pri (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void iommu_enable_dev_iotlb(struct device_domain_info *info)
{
 struct pci_dev *pdev;

 assert_spin_locked(&device_domain_lock);

 if (!info || !dev_is_pci(info->dev))
  return;

 pdev = to_pci_dev(info->dev);





 if (!ecap_dit(info->iommu->ecap))
  info->pfsid = 0;
 else {
  struct pci_dev *pf_pdev;


  pf_pdev = pci_physfn(pdev);
  info->pfsid = pci_dev_id(pf_pdev);
 }
 if (!pdev->untrusted && info->ats_supported &&
     pci_ats_page_aligned(pdev) &&
     !pci_enable_ats(pdev, VTD_PAGE_SHIFT)) {
  info->ats_enabled = 1;
  domain_update_iotlb(info->domain);
  info->ats_qdep = pci_ats_queue_depth(pdev);
 }
}
