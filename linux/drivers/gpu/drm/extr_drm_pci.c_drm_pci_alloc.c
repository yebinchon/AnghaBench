
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct drm_device {TYPE_1__* pdev; } ;
struct TYPE_7__ {size_t size; int * vaddr; int busaddr; } ;
typedef TYPE_2__ drm_dma_handle_t ;
struct TYPE_6__ {int dev; } ;


 int GFP_KERNEL ;
 scalar_t__ PAGE_SIZE ;
 int SetPageReserved (int ) ;
 int __GFP_COMP ;
 int * dma_alloc_coherent (int *,size_t,int *,int) ;
 int kfree (TYPE_2__*) ;
 TYPE_2__* kmalloc (int,int) ;
 int virt_to_page (void*) ;

drm_dma_handle_t *drm_pci_alloc(struct drm_device * dev, size_t size, size_t align)
{
 drm_dma_handle_t *dmah;
 unsigned long addr;
 size_t sz;





 if (align > size)
  return ((void*)0);

 dmah = kmalloc(sizeof(drm_dma_handle_t), GFP_KERNEL);
 if (!dmah)
  return ((void*)0);

 dmah->size = size;
 dmah->vaddr = dma_alloc_coherent(&dev->pdev->dev, size,
      &dmah->busaddr,
      GFP_KERNEL | __GFP_COMP);

 if (dmah->vaddr == ((void*)0)) {
  kfree(dmah);
  return ((void*)0);
 }



 for (addr = (unsigned long)dmah->vaddr, sz = size;
      sz > 0; addr += PAGE_SIZE, sz -= PAGE_SIZE) {
  SetPageReserved(virt_to_page((void *)addr));
 }

 return dmah;
}
