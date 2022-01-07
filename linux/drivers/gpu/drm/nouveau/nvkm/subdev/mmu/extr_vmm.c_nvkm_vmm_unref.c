
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_vmm {int kref; } ;


 int kref_put (int *,int ) ;
 int nvkm_vmm_del ;

void
nvkm_vmm_unref(struct nvkm_vmm **pvmm)
{
 struct nvkm_vmm *vmm = *pvmm;
 if (vmm) {
  kref_put(&vmm->kref, nvkm_vmm_del);
  *pvmm = ((void*)0);
 }
}
