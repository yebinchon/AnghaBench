
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


 int nvkm_gpuobj_new (int ,int,int,int,struct nvkm_gpuobj*,struct nvkm_gpuobj**) ;

__attribute__((used)) static int
g84_cipher_cclass_bind(struct nvkm_object *object, struct nvkm_gpuobj *parent,
         int align, struct nvkm_gpuobj **pgpuobj)
{
 return nvkm_gpuobj_new(object->engine->subdev.device, 256,
          align, 1, parent, pgpuobj);

}
