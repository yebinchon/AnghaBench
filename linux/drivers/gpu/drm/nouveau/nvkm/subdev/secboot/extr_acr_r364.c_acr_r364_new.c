
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_acr {int dummy; } ;


 int NVKM_SECBOOT_FALCON_PMU ;
 struct nvkm_acr* acr_r352_new_ (int *,int ,unsigned long) ;
 int acr_r364_func ;

struct nvkm_acr *
acr_r364_new(unsigned long managed_falcons)
{
 return acr_r352_new_(&acr_r364_func, NVKM_SECBOOT_FALCON_PMU,
        managed_falcons);
}
