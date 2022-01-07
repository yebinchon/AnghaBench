
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct page {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 int ENOMEM ;
 int PAGE_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 scalar_t__ pci_dma_mapping_error (struct pci_dev*,scalar_t__) ;
 scalar_t__ pci_map_page (struct pci_dev*,struct page*,int ,int ,int ) ;
 int pci_unmap_page (struct pci_dev*,scalar_t__,int ,int ) ;

int qib_map_page(struct pci_dev *hwdev, struct page *page, dma_addr_t *daddr)
{
 dma_addr_t phys;

 phys = pci_map_page(hwdev, page, 0, PAGE_SIZE, PCI_DMA_FROMDEVICE);
 if (pci_dma_mapping_error(hwdev, phys))
  return -ENOMEM;

 if (!phys) {
  pci_unmap_page(hwdev, phys, PAGE_SIZE, PCI_DMA_FROMDEVICE);
  phys = pci_map_page(hwdev, page, 0, PAGE_SIZE,
        PCI_DMA_FROMDEVICE);
  if (pci_dma_mapping_error(hwdev, phys))
   return -ENOMEM;




 }
 *daddr = phys;
 return 0;
}
