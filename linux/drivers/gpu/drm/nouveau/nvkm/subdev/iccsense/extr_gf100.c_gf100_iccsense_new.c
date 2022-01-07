
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_iccsense {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_iccsense_new_ (struct nvkm_device*,int,struct nvkm_iccsense**) ;

int
gf100_iccsense_new(struct nvkm_device *device, int index,
     struct nvkm_iccsense **piccsense)
{
 return nvkm_iccsense_new_(device, index, piccsense);
}
