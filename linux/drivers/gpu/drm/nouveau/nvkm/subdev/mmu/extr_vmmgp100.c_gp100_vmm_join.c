
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nvkm_vmm {scalar_t__ replay; } ;
struct nvkm_memory {int dummy; } ;


 int BIT_ULL (int) ;
 int gf100_vmm_join_ (struct nvkm_vmm*,struct nvkm_memory*,int) ;

int
gp100_vmm_join(struct nvkm_vmm *vmm, struct nvkm_memory *inst)
{
 u64 base = BIT_ULL(10) | BIT_ULL(11) ;
 if (vmm->replay) {
  base |= BIT_ULL(4);
  base |= BIT_ULL(5);
 }
 return gf100_vmm_join_(vmm, inst, base);
}
