
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_vmm {int * cli; int vmm; int svmm; } ;


 int nouveau_svmm_fini (int *) ;
 int nvif_vmm_fini (int *) ;

void
nouveau_vmm_fini(struct nouveau_vmm *vmm)
{
 nouveau_svmm_fini(&vmm->svmm);
 nvif_vmm_fini(&vmm->vmm);
 vmm->cli = ((void*)0);
}
