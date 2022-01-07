
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct nvkm_vmm_page {scalar_t__ shift; struct nvkm_vmm_desc* desc; } ;
struct nvkm_vmm_func {struct nvkm_vmm_page* page; } ;
struct nvkm_vmm_desc {int bits; int size; int align; } ;
struct nvkm_vmm {char const* name; scalar_t__ start; unsigned long long limit; int list; void* root; void* free; TYPE_2__* pd; int join; int mutex; int kref; int debug; struct nvkm_mmu* mmu; struct nvkm_vmm_func const* func; } ;
struct nvkm_vma {int head; } ;
struct TYPE_3__ {int debug; } ;
struct nvkm_mmu {TYPE_1__ subdev; } ;
struct lock_class_key {int dummy; } ;
struct TYPE_4__ {int* refs; int * pt; } ;


 int EINVAL ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int NVKM_VMM_LEVELS_MAX ;
 void* RB_ROOT ;
 scalar_t__ WARN_ON (int) ;
 int __mutex_init (int *,char*,struct lock_class_key*) ;
 int kref_init (int *) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int nvkm_mmu_ptc_get (struct nvkm_mmu*,scalar_t__ const,int ,int) ;
 struct nvkm_vma* nvkm_vma_new (scalar_t__,scalar_t__) ;
 int nvkm_vmm_ctor_managed (struct nvkm_vmm*,scalar_t__,scalar_t__) ;
 int nvkm_vmm_free_insert (struct nvkm_vmm*,struct nvkm_vma*) ;
 TYPE_2__* nvkm_vmm_pt_new (struct nvkm_vmm_desc const*,int,int *) ;

int
nvkm_vmm_ctor(const struct nvkm_vmm_func *func, struct nvkm_mmu *mmu,
       u32 pd_header, bool managed, u64 addr, u64 size,
       struct lock_class_key *key, const char *name,
       struct nvkm_vmm *vmm)
{
 static struct lock_class_key _key;
 const struct nvkm_vmm_page *page = func->page;
 const struct nvkm_vmm_desc *desc;
 struct nvkm_vma *vma;
 int levels, bits = 0, ret;

 vmm->func = func;
 vmm->mmu = mmu;
 vmm->name = name;
 vmm->debug = mmu->subdev.debug;
 kref_init(&vmm->kref);

 __mutex_init(&vmm->mutex, "&vmm->mutex", key ? key : &_key);




 while (page[1].shift)
  page++;





 for (levels = 0, desc = page->desc; desc->bits; desc++, levels++)
  bits += desc->bits;
 bits += page->shift;
 desc--;

 if (WARN_ON(levels > NVKM_VMM_LEVELS_MAX))
  return -EINVAL;


 vmm->pd = nvkm_vmm_pt_new(desc, 0, ((void*)0));
 if (!vmm->pd)
  return -ENOMEM;
 vmm->pd->refs[0] = 1;
 INIT_LIST_HEAD(&vmm->join);




 if (desc->size) {
  const u32 size = pd_header + desc->size * (1 << desc->bits);
  vmm->pd->pt[0] = nvkm_mmu_ptc_get(mmu, size, desc->align, 1);
  if (!vmm->pd->pt[0])
   return -ENOMEM;
 }


 INIT_LIST_HEAD(&vmm->list);
 vmm->free = RB_ROOT;
 vmm->root = RB_ROOT;

 if (managed) {




  vmm->start = 0;
  vmm->limit = 1ULL << bits;
  if (addr + size < addr || addr + size > vmm->limit)
   return -EINVAL;


  if (addr && (ret = nvkm_vmm_ctor_managed(vmm, 0, addr)))
   return ret;


  if (size) {
   if (!(vma = nvkm_vma_new(addr, size)))
    return -ENOMEM;
   nvkm_vmm_free_insert(vmm, vma);
   list_add_tail(&vma->head, &vmm->list);
  }


  addr = addr + size;
  size = vmm->limit - addr;
  if (size && (ret = nvkm_vmm_ctor_managed(vmm, addr, size)))
   return ret;
 } else {



  vmm->start = addr;
  vmm->limit = size ? (addr + size) : (1ULL << bits);
  if (vmm->start > vmm->limit || vmm->limit > (1ULL << bits))
   return -EINVAL;

  if (!(vma = nvkm_vma_new(vmm->start, vmm->limit - vmm->start)))
   return -ENOMEM;

  nvkm_vmm_free_insert(vmm, vma);
  list_add(&vma->head, &vmm->list);
 }

 return 0;
}
