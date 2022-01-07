
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_iccsense {int subdev; } ;
struct nvkm_device {int dummy; } ;


 int iccsense_func ;
 int nvkm_subdev_ctor (int *,struct nvkm_device*,int,int *) ;

void
nvkm_iccsense_ctor(struct nvkm_device *device, int index,
     struct nvkm_iccsense *iccsense)
{
 nvkm_subdev_ctor(&iccsense_func, device, index, &iccsense->subdev);
}
