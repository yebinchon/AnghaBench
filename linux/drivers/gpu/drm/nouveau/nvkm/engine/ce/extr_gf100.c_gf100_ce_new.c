
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_engine {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int ENODEV ;
 int NVKM_ENGINE_CE0 ;
 int NVKM_ENGINE_CE1 ;
 int gf100_ce0 ;
 int gf100_ce1 ;
 int nvkm_falcon_new_ (int *,struct nvkm_device*,int,int,int,struct nvkm_engine**) ;

int
gf100_ce_new(struct nvkm_device *device, int index,
      struct nvkm_engine **pengine)
{
 if (index == NVKM_ENGINE_CE0) {
  return nvkm_falcon_new_(&gf100_ce0, device, index, 1,
     0x104000, pengine);
 } else
 if (index == NVKM_ENGINE_CE1) {
  return nvkm_falcon_new_(&gf100_ce1, device, index, 1,
     0x105000, pengine);
 }
 return -ENODEV;
}
