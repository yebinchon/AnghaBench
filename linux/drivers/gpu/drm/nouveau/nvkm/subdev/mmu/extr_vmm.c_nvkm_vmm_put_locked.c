
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u64 ;
struct nvkm_vmm_page {int dummy; } ;
struct nvkm_vmm {TYPE_1__* func; } ;
struct nvkm_vma {int mapped; size_t refd; size_t page; int used; int user; scalar_t__ size; scalar_t__ addr; scalar_t__ sparse; scalar_t__ mapref; scalar_t__ part; int * memory; } ;
struct TYPE_2__ {struct nvkm_vmm_page* page; } ;


 int BUG_ON (scalar_t__) ;
 size_t const NVKM_VMA_PAGE_NONE ;
 struct nvkm_vma* node (struct nvkm_vma*,struct nvkm_vma*) ;
 int nvkm_vmm_node_remove (struct nvkm_vmm*,struct nvkm_vma*) ;
 int nvkm_vmm_ptes_put (struct nvkm_vmm*,struct nvkm_vmm_page const*,scalar_t__ const,scalar_t__) ;
 int nvkm_vmm_ptes_sparse (struct nvkm_vmm*,scalar_t__,scalar_t__,int) ;
 int nvkm_vmm_ptes_sparse_put (struct nvkm_vmm*,struct nvkm_vmm_page const*,scalar_t__,scalar_t__) ;
 int nvkm_vmm_ptes_unmap_put (struct nvkm_vmm*,struct nvkm_vmm_page const*,scalar_t__ const,scalar_t__,scalar_t__,int) ;
 int nvkm_vmm_put_region (struct nvkm_vmm*,struct nvkm_vma*) ;
 int nvkm_vmm_unmap_region (struct nvkm_vmm*,struct nvkm_vma*) ;

void
nvkm_vmm_put_locked(struct nvkm_vmm *vmm, struct nvkm_vma *vma)
{
 const struct nvkm_vmm_page *page = vmm->func->page;
 struct nvkm_vma *next = vma;

 BUG_ON(vma->part);

 if (vma->mapref || !vma->sparse) {
  do {
   const bool mem = next->memory != ((void*)0);
   const bool map = next->mapped;
   const u8 refd = next->refd;
   const u64 addr = next->addr;
   u64 size = next->size;


   while ((next = node(next, next)) && next->part &&
          (next->mapped == map) &&
          (next->memory != ((void*)0)) == mem &&
          (next->refd == refd))
    size += next->size;

   if (map) {




    nvkm_vmm_ptes_unmap_put(vmm, &page[refd], addr,
       size, vma->sparse,
       !mem);
   } else
   if (refd != NVKM_VMA_PAGE_NONE) {

    nvkm_vmm_ptes_put(vmm, &page[refd], addr, size);
   }
  } while (next && next->part);
 }





 next = vma;
 do {
  if (next->mapped)
   nvkm_vmm_unmap_region(vmm, next);
 } while ((next = node(vma, next)) && next->part);

 if (vma->sparse && !vma->mapref) {
  nvkm_vmm_ptes_sparse_put(vmm, &page[vma->refd], vma->addr, vma->size);
 } else
 if (vma->sparse) {
  nvkm_vmm_ptes_sparse(vmm, vma->addr, vma->size, 0);
 }


 nvkm_vmm_node_remove(vmm, vma);


 vma->page = NVKM_VMA_PAGE_NONE;
 vma->refd = NVKM_VMA_PAGE_NONE;
 vma->used = 0;
 vma->user = 0;
 nvkm_vmm_put_region(vmm, vma);
}
