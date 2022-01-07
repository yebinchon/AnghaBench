
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct nvkm_vmm_pt {struct nvkm_vmm_pt** pde; int * refs; } ;
struct nvkm_vmm_iter {int lvl; int page; struct nvkm_vmm_desc* desc; } ;
struct nvkm_vmm_desc {int dummy; } ;


 int NVKM_VMM_PDE_SPARSED (struct nvkm_vmm_pt*) ;
 struct nvkm_vmm_pt* nvkm_vmm_pt_new (struct nvkm_vmm_desc const*,int ,int ) ;
 int nvkm_vmm_unref_pdes (struct nvkm_vmm_iter*) ;

__attribute__((used)) static bool
nvkm_vmm_ref_swpt(struct nvkm_vmm_iter *it, struct nvkm_vmm_pt *pgd, u32 pdei)
{
 const struct nvkm_vmm_desc *desc = &it->desc[it->lvl - 1];
 struct nvkm_vmm_pt *pgt = pgd->pde[pdei];

 pgt = nvkm_vmm_pt_new(desc, NVKM_VMM_PDE_SPARSED(pgt), it->page);
 if (!pgt) {
  if (!pgd->refs[0])
   nvkm_vmm_unref_pdes(it);
  return 0;
 }

 pgd->pde[pdei] = pgt;
 return 1;
}
