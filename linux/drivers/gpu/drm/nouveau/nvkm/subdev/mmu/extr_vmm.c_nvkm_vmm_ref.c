
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_vmm {int kref; } ;


 int kref_get (int *) ;

struct nvkm_vmm *
nvkm_vmm_ref(struct nvkm_vmm *vmm)
{
 if (vmm)
  kref_get(&vmm->kref);
 return vmm;
}
