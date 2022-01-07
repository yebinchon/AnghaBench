
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_vmm_pt {int pde; } ;


 int kfree (struct nvkm_vmm_pt*) ;
 int kvfree (int ) ;

__attribute__((used)) static void
nvkm_vmm_pt_del(struct nvkm_vmm_pt **ppgt)
{
 struct nvkm_vmm_pt *pgt = *ppgt;
 if (pgt) {
  kvfree(pgt->pde);
  kfree(pgt);
  *ppgt = ((void*)0);
 }
}
