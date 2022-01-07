
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct nvkm_vmm_pt {scalar_t__* refs; int ** pde; struct nvkm_mmu_pt** pt; scalar_t__ sparse; } ;
struct nvkm_vmm_iter {size_t lvl; size_t* pte; struct nvkm_vmm* vmm; struct nvkm_vmm_pt** pt; struct nvkm_vmm_desc* desc; } ;
struct nvkm_vmm_desc_func {int (* pde ) (struct nvkm_vmm*,struct nvkm_vmm_pt*,size_t) ;int (* unmap ) (struct nvkm_vmm*,struct nvkm_mmu_pt*,size_t,int) ;int (* sparse ) (struct nvkm_vmm*,struct nvkm_mmu_pt*,size_t,int) ;} ;
struct nvkm_vmm_desc {struct nvkm_vmm_desc_func* func; int type; } ;
struct nvkm_vmm {int bootstrapped; int mmu; } ;
struct nvkm_mmu_pt {int dummy; } ;


 int * NVKM_VMM_PDE_SPARSE ;
 int SPT ;
 int TRA (struct nvkm_vmm_iter*,char*,int ) ;
 int nvkm_mmu_ptc_put (int ,int ,struct nvkm_mmu_pt**) ;
 int nvkm_vmm_desc_type (struct nvkm_vmm_desc const*) ;
 int nvkm_vmm_flush (struct nvkm_vmm_iter*) ;
 int nvkm_vmm_flush_mark (struct nvkm_vmm_iter*) ;
 int nvkm_vmm_pt_del (struct nvkm_vmm_pt**) ;
 int stub1 (struct nvkm_vmm*,struct nvkm_mmu_pt*,size_t,int) ;
 int stub2 (struct nvkm_vmm*,struct nvkm_mmu_pt*,size_t,int) ;
 int stub3 (struct nvkm_vmm*,struct nvkm_vmm_pt*,size_t) ;
 int stub4 (struct nvkm_vmm*,struct nvkm_vmm_pt*,size_t) ;

__attribute__((used)) static void
nvkm_vmm_unref_pdes(struct nvkm_vmm_iter *it)
{
 const struct nvkm_vmm_desc *desc = it->desc;
 const int type = desc[it->lvl].type == SPT;
 struct nvkm_vmm_pt *pgd = it->pt[it->lvl + 1];
 struct nvkm_vmm_pt *pgt = it->pt[it->lvl];
 struct nvkm_mmu_pt *pt = pgt->pt[type];
 struct nvkm_vmm *vmm = it->vmm;
 u32 pdei = it->pte[it->lvl + 1];


 it->lvl++;
 if (--pgd->refs[0]) {
  const struct nvkm_vmm_desc_func *func = desc[it->lvl].func;

  TRA(it, "PDE unmap %s", nvkm_vmm_desc_type(&desc[it->lvl - 1]));
  pgt->pt[type] = ((void*)0);
  if (!pgt->refs[!type]) {

   if (pgd->pt[0]) {
    if (pgt->sparse) {
     func->sparse(vmm, pgd->pt[0], pdei, 1);
     pgd->pde[pdei] = NVKM_VMM_PDE_SPARSE;
    } else {
     func->unmap(vmm, pgd->pt[0], pdei, 1);
     pgd->pde[pdei] = ((void*)0);
    }
   } else {




    func->pde(vmm, pgd, pdei);
    pgd->pde[pdei] = ((void*)0);
   }
  } else {



   func->pde(vmm, pgd, pdei);
  }


  nvkm_vmm_flush_mark(it);
  nvkm_vmm_flush(it);
 } else {

  nvkm_vmm_unref_pdes(it);
 }


 TRA(it, "PDE free %s", nvkm_vmm_desc_type(&desc[it->lvl - 1]));
 nvkm_mmu_ptc_put(vmm->mmu, vmm->bootstrapped, &pt);
 if (!pgt->refs[!type])
  nvkm_vmm_pt_del(&pgt);
 it->lvl--;
}
