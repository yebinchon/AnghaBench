
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_xtensa_func {int dummy; } ;
struct nvkm_engine {int dummy; } ;
struct nvkm_xtensa {struct nvkm_engine engine; int addr; struct nvkm_xtensa_func const* func; } ;
struct nvkm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_xtensa* kzalloc (int,int ) ;
 int nvkm_engine_ctor (int *,struct nvkm_device*,int,int,struct nvkm_engine*) ;
 int nvkm_xtensa ;

int
nvkm_xtensa_new_(const struct nvkm_xtensa_func *func,
   struct nvkm_device *device, int index, bool enable,
   u32 addr, struct nvkm_engine **pengine)
{
 struct nvkm_xtensa *xtensa;

 if (!(xtensa = kzalloc(sizeof(*xtensa), GFP_KERNEL)))
  return -ENOMEM;
 xtensa->func = func;
 xtensa->addr = addr;
 *pengine = &xtensa->engine;

 return nvkm_engine_ctor(&nvkm_xtensa, device, index,
    enable, &xtensa->engine);
}
