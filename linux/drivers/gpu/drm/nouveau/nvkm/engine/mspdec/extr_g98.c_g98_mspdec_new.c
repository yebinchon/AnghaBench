
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_engine {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int g98_mspdec ;
 int nvkm_mspdec_new_ (int *,struct nvkm_device*,int,struct nvkm_engine**) ;

int
g98_mspdec_new(struct nvkm_device *device, int index,
      struct nvkm_engine **pengine)
{
 return nvkm_mspdec_new_(&g98_mspdec, device, index, pengine);
}
