
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int addr; int entry; int * page; } ;
struct radeon_device {TYPE_1__ dummy_page; TYPE_2__* pdev; } ;
struct TYPE_5__ {int dev; } ;


 int ENOMEM ;
 int GFP_DMA32 ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int PCI_DMA_BIDIRECTIONAL ;
 int RADEON_GART_PAGE_DUMMY ;
 int __GFP_ZERO ;
 int __free_page (int *) ;
 int * alloc_page (int) ;
 int dev_err (int *,char*) ;
 scalar_t__ pci_dma_mapping_error (TYPE_2__*,int ) ;
 int pci_map_page (TYPE_2__*,int *,int ,int ,int ) ;
 int radeon_gart_get_page_entry (int ,int ) ;

int radeon_dummy_page_init(struct radeon_device *rdev)
{
 if (rdev->dummy_page.page)
  return 0;
 rdev->dummy_page.page = alloc_page(GFP_DMA32 | GFP_KERNEL | __GFP_ZERO);
 if (rdev->dummy_page.page == ((void*)0))
  return -ENOMEM;
 rdev->dummy_page.addr = pci_map_page(rdev->pdev, rdev->dummy_page.page,
     0, PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
 if (pci_dma_mapping_error(rdev->pdev, rdev->dummy_page.addr)) {
  dev_err(&rdev->pdev->dev, "Failed to DMA MAP the dummy page\n");
  __free_page(rdev->dummy_page.page);
  rdev->dummy_page.page = ((void*)0);
  return -ENOMEM;
 }
 rdev->dummy_page.entry = radeon_gart_get_page_entry(rdev->dummy_page.addr,
           RADEON_GART_PAGE_DUMMY);
 return 0;
}
