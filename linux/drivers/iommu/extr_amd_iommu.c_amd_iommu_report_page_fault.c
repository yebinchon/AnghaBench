
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct pci_dev {int dev; } ;
struct iommu_dev_data {int rs; } ;


 int PCI_BUS_NUM (int) ;
 int PCI_FUNC (int) ;
 int PCI_SLOT (int) ;
 scalar_t__ __ratelimit (int *) ;
 struct iommu_dev_data* get_dev_data (int *) ;
 int pci_dev_put (struct pci_dev*) ;
 int pci_err (struct pci_dev*,char*,int,int ,int) ;
 struct pci_dev* pci_get_domain_bus_and_slot (int ,int ,int) ;
 int pr_err (char*,int ,int ,int ,int,int ,int) ;
 scalar_t__ printk_ratelimit () ;

__attribute__((used)) static void amd_iommu_report_page_fault(u16 devid, u16 domain_id,
     u64 address, int flags)
{
 struct iommu_dev_data *dev_data = ((void*)0);
 struct pci_dev *pdev;

 pdev = pci_get_domain_bus_and_slot(0, PCI_BUS_NUM(devid),
        devid & 0xff);
 if (pdev)
  dev_data = get_dev_data(&pdev->dev);

 if (dev_data && __ratelimit(&dev_data->rs)) {
  pci_err(pdev, "Event logged [IO_PAGE_FAULT domain=0x%04x address=0x%llx flags=0x%04x]\n",
   domain_id, address, flags);
 } else if (printk_ratelimit()) {
  pr_err("Event logged [IO_PAGE_FAULT device=%02x:%02x.%x domain=0x%04x address=0x%llx flags=0x%04x]\n",
   PCI_BUS_NUM(devid), PCI_SLOT(devid), PCI_FUNC(devid),
   domain_id, address, flags);
 }

 if (pdev)
  pci_dev_put(pdev);
}
