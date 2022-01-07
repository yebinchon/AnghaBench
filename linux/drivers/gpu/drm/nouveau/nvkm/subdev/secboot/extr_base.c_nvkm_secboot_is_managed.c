
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_secboot {TYPE_1__* acr; } ;
typedef enum nvkm_secboot_falcon { ____Placeholder_nvkm_secboot_falcon } nvkm_secboot_falcon ;
struct TYPE_2__ {int managed_falcons; } ;


 int BIT (int) ;

bool
nvkm_secboot_is_managed(struct nvkm_secboot *sb, enum nvkm_secboot_falcon fid)
{
 if (!sb)
  return 0;

 return sb->acr->managed_falcons & BIT(fid);
}
