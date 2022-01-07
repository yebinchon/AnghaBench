
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nvkm_vmm_map {int offset; int off; int dma; int tags; int memory; TYPE_7__* page; scalar_t__ sgl; TYPE_1__* mem; } ;
struct nvkm_vmm {TYPE_6__* mmu; TYPE_4__* func; int debug; } ;
struct nvkm_vma {scalar_t__ size; size_t page; size_t refd; int mapped; int tags; int memory; int addr; } ;
typedef int nvkm_vmm_pte_func ;
struct TYPE_15__ {TYPE_3__* desc; } ;
struct TYPE_13__ {int device; } ;
struct TYPE_14__ {TYPE_5__ subdev; } ;
struct TYPE_12__ {TYPE_7__* page; } ;
struct TYPE_11__ {TYPE_2__* func; } ;
struct TYPE_10__ {int dma; int sgl; int mem; } ;
struct TYPE_9__ {scalar_t__ length; struct TYPE_9__* next; } ;


 int EINVAL ;
 int NVKM_RAM_MM_SHIFT ;
 size_t NVKM_VMA_PAGE_NONE ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int VMM_DEBUG (struct nvkm_vmm*,char*,...) ;
 int nvkm_memory_ref (int ) ;
 scalar_t__ nvkm_memory_size (int ) ;
 int nvkm_memory_tags_put (int ,int ,int *) ;
 int nvkm_memory_unref (int *) ;
 int nvkm_vmm_map_choose (struct nvkm_vmm*,struct nvkm_vma*,void*,int ,struct nvkm_vmm_map*) ;
 int nvkm_vmm_map_valid (struct nvkm_vmm*,struct nvkm_vma*,void*,int ,struct nvkm_vmm_map*) ;
 int nvkm_vmm_ptes_get_map (struct nvkm_vmm*,TYPE_7__*,int ,scalar_t__,struct nvkm_vmm_map*,int ) ;
 int nvkm_vmm_ptes_map (struct nvkm_vmm*,TYPE_7__*,int ,scalar_t__,struct nvkm_vmm_map*,int ) ;
 int sg_dma_len (scalar_t__) ;
 scalar_t__ sg_next (scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
nvkm_vmm_map_locked(struct nvkm_vmm *vmm, struct nvkm_vma *vma,
      void *argv, u32 argc, struct nvkm_vmm_map *map)
{
 nvkm_vmm_pte_func func;
 int ret;


 if (unlikely(nvkm_memory_size(map->memory) < map->offset + vma->size)) {
  VMM_DEBUG(vmm, "overrun %016llx %016llx %016llx",
     nvkm_memory_size(map->memory),
     map->offset, (u64)vma->size);
  return -EINVAL;
 }


 if (vma->page == NVKM_VMA_PAGE_NONE &&
     vma->refd == NVKM_VMA_PAGE_NONE) {

  const u32 debug = vmm->debug;
  vmm->debug = 0;
  ret = nvkm_vmm_map_choose(vmm, vma, argv, argc, map);
  vmm->debug = debug;
  if (ret) {
   VMM_DEBUG(vmm, "invalid at any page size");
   nvkm_vmm_map_choose(vmm, vma, argv, argc, map);
   return -EINVAL;
  }
 } else {

  if (vma->refd != NVKM_VMA_PAGE_NONE)
   map->page = &vmm->func->page[vma->refd];
  else
   map->page = &vmm->func->page[vma->page];

  ret = nvkm_vmm_map_valid(vmm, vma, argv, argc, map);
  if (ret) {
   VMM_DEBUG(vmm, "invalid %d\n", ret);
   return ret;
  }
 }


 map->off = map->offset;
 if (map->mem) {
  for (; map->off; map->mem = map->mem->next) {
   u64 size = (u64)map->mem->length << NVKM_RAM_MM_SHIFT;
   if (size > map->off)
    break;
   map->off -= size;
  }
  func = map->page->desc->func->mem;
 } else
 if (map->sgl) {
  for (; map->off; map->sgl = sg_next(map->sgl)) {
   u64 size = sg_dma_len(map->sgl);
   if (size > map->off)
    break;
   map->off -= size;
  }
  func = map->page->desc->func->sgl;
 } else {
  map->dma += map->offset >> PAGE_SHIFT;
  map->off = map->offset & PAGE_MASK;
  func = map->page->desc->func->dma;
 }


 if (vma->refd == NVKM_VMA_PAGE_NONE) {
  ret = nvkm_vmm_ptes_get_map(vmm, map->page, vma->addr, vma->size, map, func);
  if (ret)
   return ret;

  vma->refd = map->page - vmm->func->page;
 } else {
  nvkm_vmm_ptes_map(vmm, map->page, vma->addr, vma->size, map, func);
 }

 nvkm_memory_tags_put(vma->memory, vmm->mmu->subdev.device, &vma->tags);
 nvkm_memory_unref(&vma->memory);
 vma->memory = nvkm_memory_ref(map->memory);
 vma->mapped = 1;
 vma->tags = map->tags;
 return 0;
}
