
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_object {TYPE_2__* engine; } ;
struct nvkm_gpuobj {int dummy; } ;
struct TYPE_3__ {int device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;


 int nvkm_done (struct nvkm_gpuobj*) ;
 int nvkm_gpuobj_new (int ,int,int,int,struct nvkm_gpuobj*,struct nvkm_gpuobj**) ;
 int nvkm_kmap (struct nvkm_gpuobj*) ;
 int nvkm_wo32 (struct nvkm_gpuobj*,int,int) ;

__attribute__((used)) static int
nv50_mpeg_cclass_bind(struct nvkm_object *object, struct nvkm_gpuobj *parent,
        int align, struct nvkm_gpuobj **pgpuobj)
{
 int ret = nvkm_gpuobj_new(object->engine->subdev.device, 128 * 4,
      align, 1, parent, pgpuobj);
 if (ret == 0) {
  nvkm_kmap(*pgpuobj);
  nvkm_wo32(*pgpuobj, 0x70, 0x00801ec1);
  nvkm_wo32(*pgpuobj, 0x7c, 0x0000037c);
  nvkm_done(*pgpuobj);
 }
 return ret;
}
