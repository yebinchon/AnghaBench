
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_object {int oclass; TYPE_2__* engine; } ;
struct nvkm_gpuobj {int dummy; } ;
struct TYPE_3__ {int device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;


 int nvkm_done (struct nvkm_gpuobj*) ;
 int nvkm_gpuobj_new (int ,int,int,int,struct nvkm_gpuobj*,struct nvkm_gpuobj**) ;
 int nvkm_kmap (struct nvkm_gpuobj*) ;
 int nvkm_mo32 (struct nvkm_gpuobj*,int,int,int) ;
 int nvkm_wo32 (struct nvkm_gpuobj*,int,int) ;

__attribute__((used)) static int
nv04_gr_object_bind(struct nvkm_object *object, struct nvkm_gpuobj *parent,
      int align, struct nvkm_gpuobj **pgpuobj)
{
 int ret = nvkm_gpuobj_new(object->engine->subdev.device, 16, align,
      0, parent, pgpuobj);
 if (ret == 0) {
  nvkm_kmap(*pgpuobj);
  nvkm_wo32(*pgpuobj, 0x00, object->oclass);



  nvkm_wo32(*pgpuobj, 0x04, 0x00000000);
  nvkm_wo32(*pgpuobj, 0x08, 0x00000000);
  nvkm_wo32(*pgpuobj, 0x0c, 0x00000000);
  nvkm_done(*pgpuobj);
 }
 return ret;
}
