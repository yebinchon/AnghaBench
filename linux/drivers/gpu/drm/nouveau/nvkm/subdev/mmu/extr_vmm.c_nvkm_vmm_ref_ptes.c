
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_vmm_pt {int * refs; } ;
struct nvkm_vmm_iter {struct nvkm_vmm_pt** pt; struct nvkm_vmm_desc* desc; } ;
struct nvkm_vmm_desc {int type; } ;


 int SPT ;
 int nvkm_vmm_ref_sptes (struct nvkm_vmm_iter*,struct nvkm_vmm_pt*,struct nvkm_vmm_desc const*,int ,int ) ;

__attribute__((used)) static bool
nvkm_vmm_ref_ptes(struct nvkm_vmm_iter *it, bool pfn, u32 ptei, u32 ptes)
{
 const struct nvkm_vmm_desc *desc = it->desc;
 const int type = desc->type == SPT;
 struct nvkm_vmm_pt *pgt = it->pt[0];


 pgt->refs[type] += ptes;


 if (desc->type == SPT)
  nvkm_vmm_ref_sptes(it, pgt, desc, ptei, ptes);

 return 1;
}
