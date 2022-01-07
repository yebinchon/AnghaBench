
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_mmu_pt {int dummy; } ;


 int VMM_FO128 (struct nvkm_mmu_pt*,struct nvkm_vmm*,int,unsigned long long,unsigned long long,int) ;

__attribute__((used)) static void
gp100_vmm_pd0_unmap(struct nvkm_vmm *vmm,
      struct nvkm_mmu_pt *pt, u32 pdei, u32 pdes)
{
 VMM_FO128(pt, vmm, pdei * 0x10, 0ULL, 0ULL, pdes);
}
