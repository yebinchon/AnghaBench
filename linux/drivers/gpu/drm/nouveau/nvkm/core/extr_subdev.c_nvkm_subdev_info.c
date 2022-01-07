
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct nvkm_subdev {TYPE_1__* func; } ;
struct TYPE_2__ {int (* info ) (struct nvkm_subdev*,int ,int *) ;} ;


 int ENOSYS ;
 int stub1 (struct nvkm_subdev*,int ,int *) ;

int
nvkm_subdev_info(struct nvkm_subdev *subdev, u64 mthd, u64 *data)
{
 if (subdev->func->info)
  return subdev->func->info(subdev, mthd, data);
 return -ENOSYS;
}
