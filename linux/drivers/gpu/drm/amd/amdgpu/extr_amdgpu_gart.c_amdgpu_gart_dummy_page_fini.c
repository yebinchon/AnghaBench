
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {scalar_t__ dummy_page_addr; int pdev; } ;


 int PAGE_SIZE ;
 int PCI_DMA_BIDIRECTIONAL ;
 int pci_unmap_page (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void amdgpu_gart_dummy_page_fini(struct amdgpu_device *adev)
{
 if (!adev->dummy_page_addr)
  return;
 pci_unmap_page(adev->pdev, adev->dummy_page_addr,
         PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
 adev->dummy_page_addr = 0;
}
