
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_vmm_page {int dummy; } ;
struct nvkm_vmm {TYPE_1__* func; } ;
struct nvkm_vma {size_t refd; int sparse; int size; int addr; scalar_t__ mapref; } ;
struct TYPE_2__ {struct nvkm_vmm_page* page; } ;


 size_t NVKM_VMA_PAGE_NONE ;
 int nvkm_vmm_ptes_unmap (struct nvkm_vmm*,struct nvkm_vmm_page const*,int ,int ,int ,int) ;
 int nvkm_vmm_ptes_unmap_put (struct nvkm_vmm*,struct nvkm_vmm_page const*,int ,int ,int ,int) ;
 int nvkm_vmm_unmap_region (struct nvkm_vmm*,struct nvkm_vma*) ;

void
nvkm_vmm_unmap_locked(struct nvkm_vmm *vmm, struct nvkm_vma *vma, bool pfn)
{
 const struct nvkm_vmm_page *page = &vmm->func->page[vma->refd];

 if (vma->mapref) {
  nvkm_vmm_ptes_unmap_put(vmm, page, vma->addr, vma->size, vma->sparse, pfn);
  vma->refd = NVKM_VMA_PAGE_NONE;
 } else {
  nvkm_vmm_ptes_unmap(vmm, page, vma->addr, vma->size, vma->sparse, pfn);
 }

 nvkm_vmm_unmap_region(vmm, vma);
}
