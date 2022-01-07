
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_engine {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int gt215_mspdec ;
 int nvkm_mspdec_new_ (int *,struct nvkm_device*,int,struct nvkm_engine**) ;

int
gt215_mspdec_new(struct nvkm_device *device, int index,
      struct nvkm_engine **pengine)
{
 return nvkm_mspdec_new_(&gt215_mspdec, device, index, pengine);
}
