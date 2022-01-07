
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct resource {unsigned long start; } ;
struct page {struct nouveau_dmem_chunk* zone_device_data; } ;
struct TYPE_8__ {scalar_t__ family; int ram_user; } ;
struct TYPE_9__ {TYPE_2__ info; } ;
struct TYPE_10__ {TYPE_3__ device; } ;
struct nouveau_drm {TYPE_5__* dmem; TYPE_4__ client; TYPE_1__* dev; } ;
struct nouveau_dmem_chunk {unsigned long pfn_first; int list; struct nouveau_drm* drm; } ;
struct device {int dummy; } ;
struct TYPE_12__ {int * ops; struct resource res; int type; } ;
struct TYPE_11__ {int chunk_empty; TYPE_6__ pagemap; int chunk_full; int chunk_free; int mutex; struct nouveau_drm* drm; } ;
struct TYPE_7__ {struct device* dev; } ;


 unsigned long ALIGN (int ,unsigned long) ;
 unsigned long DMEM_CHUNK_NPAGES ;
 unsigned long DMEM_CHUNK_SIZE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct resource*) ;
 int MEMORY_DEVICE_PRIVATE ;
 scalar_t__ NV_DEVICE_INFO_V0_PASCAL ;
 int NV_INFO (struct nouveau_drm*,char*,unsigned long) ;
 unsigned long PAGE_SHIFT ;
 struct resource* devm_memremap_pages (struct device*,TYPE_6__*) ;
 struct resource* devm_request_free_mem_region (struct device*,int *,unsigned long) ;
 int iomem_resource ;
 int kfree (TYPE_5__*) ;
 void* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int nouveau_dmem_fini (struct nouveau_drm*) ;
 int nouveau_dmem_migrate_init (struct nouveau_drm*) ;
 int nouveau_dmem_pagemap_ops ;
 struct page* pfn_to_page (unsigned long) ;

void
nouveau_dmem_init(struct nouveau_drm *drm)
{
 struct device *device = drm->dev->dev;
 struct resource *res;
 unsigned long i, size, pfn_first;
 int ret;


 if (drm->client.device.info.family < NV_DEVICE_INFO_V0_PASCAL)
  return;

 if (!(drm->dmem = kzalloc(sizeof(*drm->dmem), GFP_KERNEL)))
  return;

 drm->dmem->drm = drm;
 mutex_init(&drm->dmem->mutex);
 INIT_LIST_HEAD(&drm->dmem->chunk_free);
 INIT_LIST_HEAD(&drm->dmem->chunk_full);
 INIT_LIST_HEAD(&drm->dmem->chunk_empty);

 size = ALIGN(drm->client.device.info.ram_user, DMEM_CHUNK_SIZE);


 ret = nouveau_dmem_migrate_init(drm);
 if (ret)
  goto out_free;







 res = devm_request_free_mem_region(device, &iomem_resource, size);
 if (IS_ERR(res))
  goto out_free;
 drm->dmem->pagemap.type = MEMORY_DEVICE_PRIVATE;
 drm->dmem->pagemap.res = *res;
 drm->dmem->pagemap.ops = &nouveau_dmem_pagemap_ops;
 if (IS_ERR(devm_memremap_pages(device, &drm->dmem->pagemap)))
  goto out_free;

 pfn_first = res->start >> PAGE_SHIFT;
 for (i = 0; i < (size / DMEM_CHUNK_SIZE); ++i) {
  struct nouveau_dmem_chunk *chunk;
  struct page *page;
  unsigned long j;

  chunk = kzalloc(sizeof(*chunk), GFP_KERNEL);
  if (chunk == ((void*)0)) {
   nouveau_dmem_fini(drm);
   return;
  }

  chunk->drm = drm;
  chunk->pfn_first = pfn_first + (i * DMEM_CHUNK_NPAGES);
  list_add_tail(&chunk->list, &drm->dmem->chunk_empty);

  page = pfn_to_page(chunk->pfn_first);
  for (j = 0; j < DMEM_CHUNK_NPAGES; ++j, ++page)
   page->zone_device_data = chunk;
 }

 NV_INFO(drm, "DMEM: registered %ldMB of device memory\n", size >> 20);
 return;
out_free:
 kfree(drm->dmem);
 drm->dmem = ((void*)0);
}
