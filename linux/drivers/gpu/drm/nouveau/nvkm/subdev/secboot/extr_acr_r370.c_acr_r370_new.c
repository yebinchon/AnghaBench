
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_acr {int dummy; } ;
typedef enum nvkm_secboot_falcon { ____Placeholder_nvkm_secboot_falcon } nvkm_secboot_falcon ;


 struct nvkm_acr* acr_r352_new_ (int *,int,unsigned long) ;
 int acr_r370_func ;

struct nvkm_acr *
acr_r370_new(enum nvkm_secboot_falcon boot_falcon,
      unsigned long managed_falcons)
{
 return acr_r352_new_(&acr_r370_func, boot_falcon, managed_falcons);
}
