
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_engine {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int gf100_msvld ;
 int nvkm_msvld_new_ (int *,struct nvkm_device*,int,struct nvkm_engine**) ;

int
gf100_msvld_new(struct nvkm_device *device, int index,
  struct nvkm_engine **pengine)
{
 return nvkm_msvld_new_(&gf100_msvld, device, index, pengine);
}
