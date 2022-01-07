
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {int dummy; } ;
struct nouveau_drm {TYPE_2__* dmem; TYPE_3__* dev; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {struct device* dev; } ;
struct TYPE_4__ {scalar_t__ (* copy_func ) (struct nouveau_drm*,int,int ,int ,int ,int ) ;} ;
struct TYPE_5__ {TYPE_1__ migrate; } ;


 int DMA_BIDIRECTIONAL ;
 unsigned long MIGRATE_PFN_LOCKED ;
 unsigned long MIGRATE_PFN_MIGRATE ;
 int NOUVEAU_APER_HOST ;
 int NOUVEAU_APER_VRAM ;
 int PAGE_SIZE ;
 int dma_map_page (struct device*,struct page*,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int dma_unmap_page (struct device*,int ,int ,int ) ;
 unsigned long migrate_pfn (int ) ;
 struct page* migrate_pfn_to_page (unsigned long) ;
 int nouveau_dmem_page_addr (struct page*) ;
 struct page* nouveau_dmem_page_alloc_locked (struct nouveau_drm*) ;
 int nouveau_dmem_page_free_locked (struct nouveau_drm*,struct page*) ;
 int page_to_pfn (struct page*) ;
 scalar_t__ stub1 (struct nouveau_drm*,int,int ,int ,int ,int ) ;

__attribute__((used)) static unsigned long nouveau_dmem_migrate_copy_one(struct nouveau_drm *drm,
  unsigned long src, dma_addr_t *dma_addr)
{
 struct device *dev = drm->dev->dev;
 struct page *dpage, *spage;

 spage = migrate_pfn_to_page(src);
 if (!spage || !(src & MIGRATE_PFN_MIGRATE))
  goto out;

 dpage = nouveau_dmem_page_alloc_locked(drm);
 if (!dpage)
  return 0;

 *dma_addr = dma_map_page(dev, spage, 0, PAGE_SIZE, DMA_BIDIRECTIONAL);
 if (dma_mapping_error(dev, *dma_addr))
  goto out_free_page;

 if (drm->dmem->migrate.copy_func(drm, 1, NOUVEAU_APER_VRAM,
   nouveau_dmem_page_addr(dpage), NOUVEAU_APER_HOST,
   *dma_addr))
  goto out_dma_unmap;

 return migrate_pfn(page_to_pfn(dpage)) | MIGRATE_PFN_LOCKED;

out_dma_unmap:
 dma_unmap_page(dev, *dma_addr, PAGE_SIZE, DMA_BIDIRECTIONAL);
out_free_page:
 nouveau_dmem_page_free_locked(drm, dpage);
out:
 return 0;
}
