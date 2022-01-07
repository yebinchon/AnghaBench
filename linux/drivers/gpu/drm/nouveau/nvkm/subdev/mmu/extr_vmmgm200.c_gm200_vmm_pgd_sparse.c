
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_mmu_pt {int dummy; } ;


 int BIT_ULL (int) ;
 int VMM_FO064 (struct nvkm_mmu_pt*,struct nvkm_vmm*,int,int ,int) ;

__attribute__((used)) static void
gm200_vmm_pgd_sparse(struct nvkm_vmm *vmm,
       struct nvkm_mmu_pt *pt, u32 pdei, u32 pdes)
{

 VMM_FO064(pt, vmm, pdei * 8, BIT_ULL(35) , pdes);
}
