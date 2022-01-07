
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_engine {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int gp102_ce ;
 int nvkm_engine_new_ (int *,struct nvkm_device*,int,int,struct nvkm_engine**) ;

int
gp102_ce_new(struct nvkm_device *device, int index,
      struct nvkm_engine **pengine)
{
 return nvkm_engine_new_(&gp102_ce, device, index, 1, pengine);
}
