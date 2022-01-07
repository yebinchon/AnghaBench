
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_engine {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int g98_msppp ;
 int nvkm_msppp_new_ (int *,struct nvkm_device*,int,struct nvkm_engine**) ;

int
g98_msppp_new(struct nvkm_device *device, int index,
       struct nvkm_engine **pengine)
{
 return nvkm_msppp_new_(&g98_msppp, device, index, pengine);
}
