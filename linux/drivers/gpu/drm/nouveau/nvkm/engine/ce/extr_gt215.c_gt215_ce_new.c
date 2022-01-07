
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_engine {int dummy; } ;
struct nvkm_device {int chipset; } ;


 int gt215_ce ;
 int nvkm_falcon_new_ (int *,struct nvkm_device*,int,int,int,struct nvkm_engine**) ;

int
gt215_ce_new(struct nvkm_device *device, int index,
      struct nvkm_engine **pengine)
{
 return nvkm_falcon_new_(&gt215_ce, device, index,
    (device->chipset != 0xaf), 0x104000, pengine);
}
