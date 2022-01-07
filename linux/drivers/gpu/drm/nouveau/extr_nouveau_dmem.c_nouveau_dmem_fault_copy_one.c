
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {int address; int vma; } ;
struct page {int dummy; } ;
struct nouveau_drm {TYPE_3__* dmem; TYPE_1__* dev; } ;
struct migrate_vma {int* src; int* dst; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_5__ {scalar_t__ (* copy_func ) (struct nouveau_drm*,int,int ,int ,int ,int ) ;} ;
struct TYPE_6__ {TYPE_2__ migrate; } ;
struct TYPE_4__ {struct device* dev; } ;


 int DMA_BIDIRECTIONAL ;
 int GFP_HIGHUSER ;
 int MIGRATE_PFN_LOCKED ;
 int MIGRATE_PFN_MIGRATE ;
 int NOUVEAU_APER_HOST ;
 int NOUVEAU_APER_VRAM ;
 int PAGE_SIZE ;
 int VM_FAULT_SIGBUS ;
 int __free_page (struct page*) ;
 struct page* alloc_page_vma (int ,int ,int ) ;
 int dma_map_page (struct device*,struct page*,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int dma_unmap_page (struct device*,int ,int ,int ) ;
 int lock_page (struct page*) ;
 int migrate_pfn (int ) ;
 struct page* migrate_pfn_to_page (int) ;
 int nouveau_dmem_page_addr (struct page*) ;
 int page_to_pfn (struct page*) ;
 scalar_t__ stub1 (struct nouveau_drm*,int,int ,int ,int ,int ) ;

__attribute__((used)) static vm_fault_t nouveau_dmem_fault_copy_one(struct nouveau_drm *drm,
  struct vm_fault *vmf, struct migrate_vma *args,
  dma_addr_t *dma_addr)
{
 struct device *dev = drm->dev->dev;
 struct page *dpage, *spage;

 spage = migrate_pfn_to_page(args->src[0]);
 if (!spage || !(args->src[0] & MIGRATE_PFN_MIGRATE))
  return 0;

 dpage = alloc_page_vma(GFP_HIGHUSER, vmf->vma, vmf->address);
 if (!dpage)
  return VM_FAULT_SIGBUS;
 lock_page(dpage);

 *dma_addr = dma_map_page(dev, dpage, 0, PAGE_SIZE, DMA_BIDIRECTIONAL);
 if (dma_mapping_error(dev, *dma_addr))
  goto error_free_page;

 if (drm->dmem->migrate.copy_func(drm, 1, NOUVEAU_APER_HOST, *dma_addr,
   NOUVEAU_APER_VRAM, nouveau_dmem_page_addr(spage)))
  goto error_dma_unmap;

 args->dst[0] = migrate_pfn(page_to_pfn(dpage)) | MIGRATE_PFN_LOCKED;
 return 0;

error_dma_unmap:
 dma_unmap_page(dev, *dma_addr, PAGE_SIZE, DMA_BIDIRECTIONAL);
error_free_page:
 __free_page(dpage);
 return VM_FAULT_SIGBUS;
}
