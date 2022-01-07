
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_7__ {int * data; } ;
struct TYPE_6__ {int * data; } ;
struct TYPE_9__ {struct nvkm_device* device; } ;
struct TYPE_10__ {TYPE_4__ subdev; } ;
struct nvkm_falcon {TYPE_2__ code; TYPE_1__ data; scalar_t__ external; int core; scalar_t__ addr; TYPE_5__ engine; } ;
struct TYPE_8__ {int index; } ;
struct nvkm_engine {TYPE_3__ subdev; } ;
struct nvkm_device {int dummy; } ;


 struct nvkm_falcon* nvkm_falcon (struct nvkm_engine*) ;
 int nvkm_mask (struct nvkm_device*,scalar_t__ const,int,int) ;
 scalar_t__ nvkm_mc_enabled (struct nvkm_device*,int ) ;
 int nvkm_memory_unref (int *) ;
 int nvkm_wr32 (struct nvkm_device*,scalar_t__ const,int) ;
 int vfree (int *) ;

__attribute__((used)) static int
nvkm_falcon_fini(struct nvkm_engine *engine, bool suspend)
{
 struct nvkm_falcon *falcon = nvkm_falcon(engine);
 struct nvkm_device *device = falcon->engine.subdev.device;
 const u32 base = falcon->addr;

 if (!suspend) {
  nvkm_memory_unref(&falcon->core);
  if (falcon->external) {
   vfree(falcon->data.data);
   vfree(falcon->code.data);
   falcon->code.data = ((void*)0);
  }
 }

 if (nvkm_mc_enabled(device, engine->subdev.index)) {
  nvkm_mask(device, base + 0x048, 0x00000003, 0x00000000);
  nvkm_wr32(device, base + 0x014, 0xffffffff);
 }
 return 0;
}
