
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_engine {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int gt215_msppp ;
 int nvkm_msppp_new_ (int *,struct nvkm_device*,int,struct nvkm_engine**) ;

int
gt215_msppp_new(struct nvkm_device *device, int index,
       struct nvkm_engine **pengine)
{
 return nvkm_msppp_new_(&gt215_msppp, device, index, pengine);
}
