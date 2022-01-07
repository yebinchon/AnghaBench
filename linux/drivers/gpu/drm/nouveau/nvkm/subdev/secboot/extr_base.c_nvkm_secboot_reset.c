
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_secboot {TYPE_2__* acr; int subdev; } ;
struct TYPE_4__ {unsigned long managed_falcons; TYPE_1__* func; } ;
struct TYPE_3__ {int (* reset ) (TYPE_2__*,struct nvkm_secboot*,unsigned long) ;} ;


 int EINVAL ;
 int nvkm_error (int *,char*) ;
 int stub1 (TYPE_2__*,struct nvkm_secboot*,unsigned long) ;

int
nvkm_secboot_reset(struct nvkm_secboot *sb, unsigned long falcon_mask)
{

 if ((falcon_mask | sb->acr->managed_falcons) != sb->acr->managed_falcons) {
  nvkm_error(&sb->subdev, "cannot reset unmanaged falcon!\n");
  return -EINVAL;
 }

 return sb->acr->func->reset(sb->acr, sb, falcon_mask);
}
