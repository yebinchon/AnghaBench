
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int devfn; } ;
struct kfd_dev {int dummy; } ;


 int AMD_IOMMU_INV_PRI_RSP_INVALID ;
 int PCI_BUS_NUM (int ) ;
 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 int PPR_FAULT_EXEC ;
 int PPR_FAULT_WRITE ;
 int WARN_ON (int) ;
 int dev_warn_ratelimited (int ,char*,int ,int ,int ,int,unsigned long,int) ;
 int kfd_device ;
 struct kfd_dev* kfd_device_by_pci_dev (struct pci_dev*) ;
 int kfd_signal_iommu_event (struct kfd_dev*,int,unsigned long,int,int) ;

__attribute__((used)) static int iommu_invalid_ppr_cb(struct pci_dev *pdev, int pasid,
  unsigned long address, u16 flags)
{
 struct kfd_dev *dev;

 dev_warn_ratelimited(kfd_device,
   "Invalid PPR device %x:%x.%x pasid %d address 0x%lX flags 0x%X",
   PCI_BUS_NUM(pdev->devfn),
   PCI_SLOT(pdev->devfn),
   PCI_FUNC(pdev->devfn),
   pasid,
   address,
   flags);

 dev = kfd_device_by_pci_dev(pdev);
 if (!WARN_ON(!dev))
  kfd_signal_iommu_event(dev, pasid, address,
   flags & PPR_FAULT_WRITE, flags & PPR_FAULT_EXEC);

 return AMD_IOMMU_INV_PRI_RSP_INVALID;
}
