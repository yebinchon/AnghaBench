
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_4__ {int num_desc; int descriptors_per_page; int direction; TYPE_2__** desc_pages; scalar_t__ chain_start; } ;
typedef TYPE_1__ drm_via_sg_info_t ;
struct TYPE_5__ {scalar_t__ next; int size; int mem_addr; } ;
typedef TYPE_2__ drm_via_descriptor_t ;
typedef scalar_t__ dma_addr_t ;


 int DMA_TO_DEVICE ;
 int dma_unmap_page (int *,int ,int ,int ) ;
 int dma_unmap_single (int *,scalar_t__,int,int ) ;

__attribute__((used)) static void
via_unmap_blit_from_device(struct pci_dev *pdev, drm_via_sg_info_t *vsg)
{
 int num_desc = vsg->num_desc;
 unsigned cur_descriptor_page = num_desc / vsg->descriptors_per_page;
 unsigned descriptor_this_page = num_desc % vsg->descriptors_per_page;
 drm_via_descriptor_t *desc_ptr = vsg->desc_pages[cur_descriptor_page] +
  descriptor_this_page;
 dma_addr_t next = vsg->chain_start;

 while (num_desc--) {
  if (descriptor_this_page-- == 0) {
   cur_descriptor_page--;
   descriptor_this_page = vsg->descriptors_per_page - 1;
   desc_ptr = vsg->desc_pages[cur_descriptor_page] +
    descriptor_this_page;
  }
  dma_unmap_single(&pdev->dev, next, sizeof(*desc_ptr), DMA_TO_DEVICE);
  dma_unmap_page(&pdev->dev, desc_ptr->mem_addr, desc_ptr->size, vsg->direction);
  next = (dma_addr_t) desc_ptr->next;
  desc_ptr--;
 }
}
