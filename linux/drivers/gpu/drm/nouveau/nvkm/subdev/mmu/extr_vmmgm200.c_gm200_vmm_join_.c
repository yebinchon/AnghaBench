
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct nvkm_vmm {TYPE_2__* func; } ;
struct nvkm_memory {int dummy; } ;
struct TYPE_4__ {TYPE_1__* page; } ;
struct TYPE_3__ {int shift; } ;


 int BIT_ULL (int) ;
 int gf100_vmm_join_ (struct nvkm_vmm*,struct nvkm_memory*,int ) ;

int
gm200_vmm_join_(struct nvkm_vmm *vmm, struct nvkm_memory *inst, u64 base)
{
 if (vmm->func->page[1].shift == 16)
  base |= BIT_ULL(11);
 return gf100_vmm_join_(vmm, inst, base);
}
