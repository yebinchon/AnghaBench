
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_object {TYPE_1__* func; } ;
struct nvkm_gpuobj {int dummy; } ;
struct TYPE_2__ {int (* bind ) (struct nvkm_object*,struct nvkm_gpuobj*,int,struct nvkm_gpuobj**) ;} ;


 int ENODEV ;
 int stub1 (struct nvkm_object*,struct nvkm_gpuobj*,int,struct nvkm_gpuobj**) ;

int
nvkm_object_bind(struct nvkm_object *object, struct nvkm_gpuobj *gpuobj,
   int align, struct nvkm_gpuobj **pgpuobj)
{
 if (object->func->bind)
  return object->func->bind(object, gpuobj, align, pgpuobj);
 return -ENODEV;
}
