
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nvkm_vmm {int limit; TYPE_2__* pd; } ;
struct nvkm_mmu {int dummy; } ;
struct nvkm_memory {int dummy; } ;
struct lock_class_key {int dummy; } ;
struct TYPE_4__ {TYPE_1__** pt; } ;
struct TYPE_3__ {struct nvkm_memory* memory; } ;


 int nv04_vmm ;
 int nv04_vmm_new_ (int *,struct nvkm_mmu*,int,int,int ,int ,void*,int ,struct lock_class_key*,char const*,struct nvkm_vmm**) ;
 int nvkm_done (struct nvkm_memory*) ;
 int nvkm_kmap (struct nvkm_memory*) ;
 int nvkm_wo32 (struct nvkm_memory*,int,int) ;

int
nv04_vmm_new(struct nvkm_mmu *mmu, bool managed, u64 addr, u64 size,
      void *argv, u32 argc, struct lock_class_key *key, const char *name,
      struct nvkm_vmm **pvmm)
{
 struct nvkm_memory *mem;
 struct nvkm_vmm *vmm;
 int ret;

 ret = nv04_vmm_new_(&nv04_vmm, mmu, 8, managed, addr, size,
       argv, argc, key, name, &vmm);
 *pvmm = vmm;
 if (ret)
  return ret;

 mem = vmm->pd->pt[0]->memory;
 nvkm_kmap(mem);
 nvkm_wo32(mem, 0x00000, 0x0002103d);
 nvkm_wo32(mem, 0x00004, vmm->limit - 1);
 nvkm_done(mem);
 return 0;
}
