
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct nvkm_xtensa {int gpu_fw; scalar_t__ addr; TYPE_2__ engine; } ;
struct nvkm_engine {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_memory_unref (int *) ;
 int nvkm_wr32 (struct nvkm_device*,scalar_t__ const,int ) ;
 struct nvkm_xtensa* nvkm_xtensa (struct nvkm_engine*) ;

__attribute__((used)) static int
nvkm_xtensa_fini(struct nvkm_engine *engine, bool suspend)
{
 struct nvkm_xtensa *xtensa = nvkm_xtensa(engine);
 struct nvkm_device *device = xtensa->engine.subdev.device;
 const u32 base = xtensa->addr;

 nvkm_wr32(device, base + 0xd84, 0);
 nvkm_wr32(device, base + 0xd94, 0);

 if (!suspend)
  nvkm_memory_unref(&xtensa->gpu_fw);
 return 0;
}
