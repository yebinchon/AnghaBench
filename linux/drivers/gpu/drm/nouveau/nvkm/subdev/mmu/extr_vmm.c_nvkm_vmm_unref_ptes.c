
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_vmm_pt {scalar_t__* refs; int * pt; } ;
struct nvkm_vmm_iter {int lvl; int vmm; struct nvkm_vmm_pt** pt; struct nvkm_vmm_desc* desc; } ;
struct nvkm_vmm_desc {int type; TYPE_1__* func; } ;
struct TYPE_2__ {int (* pfn_clear ) (int ,int ,int ,int ) ;int (* pfn_unmap ) (int ,int ,int ,int ) ;} ;


 int SPT ;
 int TRA (struct nvkm_vmm_iter*,char*,int ) ;
 int nvkm_vmm_desc_type (struct nvkm_vmm_desc const*) ;
 int nvkm_vmm_flush (struct nvkm_vmm_iter*) ;
 int nvkm_vmm_flush_mark (struct nvkm_vmm_iter*) ;
 int nvkm_vmm_unref_pdes (struct nvkm_vmm_iter*) ;
 int nvkm_vmm_unref_sptes (struct nvkm_vmm_iter*,struct nvkm_vmm_pt*,struct nvkm_vmm_desc const*,int ,int ) ;
 int stub1 (int ,int ,int ,int ) ;
 int stub2 (int ,int ,int ,int ) ;

__attribute__((used)) static bool
nvkm_vmm_unref_ptes(struct nvkm_vmm_iter *it, bool pfn, u32 ptei, u32 ptes)
{
 const struct nvkm_vmm_desc *desc = it->desc;
 const int type = desc->type == SPT;
 struct nvkm_vmm_pt *pgt = it->pt[0];
 bool dma;

 if (pfn) {

  dma = desc->func->pfn_clear(it->vmm, pgt->pt[type], ptei, ptes);
  if (dma) {

   nvkm_vmm_flush_mark(it);
   nvkm_vmm_flush(it);
   desc->func->pfn_unmap(it->vmm, pgt->pt[type], ptei, ptes);
  }
 }


 pgt->refs[type] -= ptes;


 if (desc->type == SPT && (pgt->refs[0] || pgt->refs[1]))
  nvkm_vmm_unref_sptes(it, pgt, desc, ptei, ptes);


 if (!pgt->refs[type]) {
  it->lvl++;
  TRA(it, "%s empty", nvkm_vmm_desc_type(desc));
  it->lvl--;
  nvkm_vmm_unref_pdes(it);
  return 0;
 }

 return 1;
}
