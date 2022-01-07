
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nvkm_vmm_join {struct nvkm_memory* inst; int head; } ;
struct nvkm_vmm {int start; int limit; TYPE_4__* pd; int join; TYPE_3__* mmu; } ;
struct nvkm_memory {int dummy; } ;
struct TYPE_8__ {int * pde; } ;
struct TYPE_7__ {TYPE_2__* func; } ;
struct TYPE_5__ {int pd_offset; } ;
struct TYPE_6__ {TYPE_1__ vmm; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_vmm_join* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int nv50_vmm_pde (struct nvkm_vmm*,int ,int *) ;
 int nvkm_done (struct nvkm_memory*) ;
 int nvkm_kmap (struct nvkm_memory*) ;
 int nvkm_wo64 (struct nvkm_memory*,int const,int ) ;

int
nv50_vmm_join(struct nvkm_vmm *vmm, struct nvkm_memory *inst)
{
 const u32 pd_offset = vmm->mmu->func->vmm.pd_offset;
 struct nvkm_vmm_join *join;
 int ret = 0;
 u64 data;
 u32 pdei;

 if (!(join = kmalloc(sizeof(*join), GFP_KERNEL)))
  return -ENOMEM;
 join->inst = inst;
 list_add_tail(&join->head, &vmm->join);

 nvkm_kmap(join->inst);
 for (pdei = vmm->start >> 29; pdei <= (vmm->limit - 1) >> 29; pdei++) {
  if (!nv50_vmm_pde(vmm, vmm->pd->pde[pdei], &data)) {
   ret = -EINVAL;
   break;
  }
  nvkm_wo64(join->inst, pd_offset + (pdei * 8), data);
 }
 nvkm_done(join->inst);
 return ret;
}
