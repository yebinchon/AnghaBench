
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_acr {scalar_t__ boot_falcon; } ;
struct acr_r352 {int ls_blob; int load_blob; struct acr_r352* hsbl_blob; struct acr_r352* hsbl_unload_blob; int unload_blob; } ;


 scalar_t__ NVKM_SECBOOT_FALCON_PMU ;
 struct acr_r352* acr_r352 (struct nvkm_acr*) ;
 int kfree (struct acr_r352*) ;
 int nvkm_gpuobj_del (int *) ;

__attribute__((used)) static void
acr_r352_dtor(struct nvkm_acr *_acr)
{
 struct acr_r352 *acr = acr_r352(_acr);

 nvkm_gpuobj_del(&acr->unload_blob);

 if (_acr->boot_falcon != NVKM_SECBOOT_FALCON_PMU)
  kfree(acr->hsbl_unload_blob);
 kfree(acr->hsbl_blob);
 nvkm_gpuobj_del(&acr->load_blob);
 nvkm_gpuobj_del(&acr->ls_blob);

 kfree(acr);
}
