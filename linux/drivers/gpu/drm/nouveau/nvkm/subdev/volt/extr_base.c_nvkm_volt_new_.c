
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_volt_func {int dummy; } ;
struct nvkm_volt {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_volt* kzalloc (int,int ) ;
 int nvkm_volt_ctor (struct nvkm_volt_func const*,struct nvkm_device*,int,struct nvkm_volt*) ;

int
nvkm_volt_new_(const struct nvkm_volt_func *func, struct nvkm_device *device,
        int index, struct nvkm_volt **pvolt)
{
 if (!(*pvolt = kzalloc(sizeof(**pvolt), GFP_KERNEL)))
  return -ENOMEM;
 nvkm_volt_ctor(func, device, index, *pvolt);
 return 0;
}
