
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct nvkm_vmm {unsigned long long limit; TYPE_1__* pd; } ;
struct nvkm_mmu_pt {unsigned long long addr; int memory; } ;
struct nvkm_memory {int dummy; } ;
struct TYPE_2__ {struct nvkm_mmu_pt** pt; } ;


 unsigned long long BIT_ULL (int) ;
 int EINVAL ;



 int WARN_ON (int) ;
 int nvkm_done (struct nvkm_memory*) ;
 int nvkm_kmap (struct nvkm_memory*) ;
 int nvkm_memory_target (int ) ;
 int nvkm_wo64 (struct nvkm_memory*,int,unsigned long long) ;

int
gf100_vmm_join_(struct nvkm_vmm *vmm, struct nvkm_memory *inst, u64 base)
{
 struct nvkm_mmu_pt *pd = vmm->pd->pt[0];

 switch (nvkm_memory_target(pd->memory)) {
 case 128: base |= 0ULL << 0; break;
 case 130: base |= 2ULL << 0;
  base |= BIT_ULL(2) ;
  break;
 case 129: base |= 3ULL << 0; break;
 default:
  WARN_ON(1);
  return -EINVAL;
 }
 base |= pd->addr;

 nvkm_kmap(inst);
 nvkm_wo64(inst, 0x0200, base);
 nvkm_wo64(inst, 0x0208, vmm->limit - 1);
 nvkm_done(inst);
 return 0;
}
