
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct pci_dev {TYPE_1__* bus; int device; int vendor; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int data; } ;
struct TYPE_3__ {scalar_t__ number; } ;


 scalar_t__ PCI_BUS_NUM (size_t) ;
 int PCI_FUNC (size_t) ;
 int PCI_SLOT (size_t) ;
 int __last_alias ;
 size_t* amd_iommu_alias_table ;
 TYPE_2__* amd_iommu_dev_table ;
 scalar_t__* amd_iommu_rlookup_table ;
 int dev_is_pci (struct device*) ;
 size_t get_device_id (struct device*) ;
 int memcpy (int ,int ,int) ;
 int pci_add_dma_alias (struct pci_dev*,size_t) ;
 int pci_for_each_dma_alias (struct pci_dev*,int ,size_t*) ;
 int pci_info (struct pci_dev*,char*,scalar_t__,int ,...) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static u16 get_alias(struct device *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 u16 devid, ivrs_alias, pci_alias;


 devid = get_device_id(dev);


 if (!dev_is_pci(dev))
  return devid;

 ivrs_alias = amd_iommu_alias_table[devid];

 pci_for_each_dma_alias(pdev, __last_alias, &pci_alias);

 if (ivrs_alias == pci_alias)
  return ivrs_alias;
 if (ivrs_alias == devid) {
  if (!amd_iommu_rlookup_table[pci_alias]) {
   amd_iommu_rlookup_table[pci_alias] =
    amd_iommu_rlookup_table[devid];
   memcpy(amd_iommu_dev_table[pci_alias].data,
          amd_iommu_dev_table[devid].data,
          sizeof(amd_iommu_dev_table[pci_alias].data));
  }

  return pci_alias;
 }

 pci_info(pdev, "Using IVRS reported alias %02x:%02x.%d "
  "for device [%04x:%04x], kernel reported alias "
  "%02x:%02x.%d\n", PCI_BUS_NUM(ivrs_alias), PCI_SLOT(ivrs_alias),
  PCI_FUNC(ivrs_alias), pdev->vendor, pdev->device,
  PCI_BUS_NUM(pci_alias), PCI_SLOT(pci_alias),
  PCI_FUNC(pci_alias));





 if (pci_alias == devid &&
     PCI_BUS_NUM(ivrs_alias) == pdev->bus->number) {
  pci_add_dma_alias(pdev, ivrs_alias & 0xff);
  pci_info(pdev, "Added PCI DMA alias %02x.%d\n",
   PCI_SLOT(ivrs_alias), PCI_FUNC(ivrs_alias));
 }

 return ivrs_alias;
}
