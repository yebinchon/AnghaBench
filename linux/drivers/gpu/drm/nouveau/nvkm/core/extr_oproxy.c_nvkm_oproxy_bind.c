
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_object {int dummy; } ;
struct nvkm_gpuobj {int dummy; } ;
struct TYPE_2__ {int object; } ;


 int nvkm_object_bind (int ,struct nvkm_gpuobj*,int,struct nvkm_gpuobj**) ;
 TYPE_1__* nvkm_oproxy (struct nvkm_object*) ;

__attribute__((used)) static int
nvkm_oproxy_bind(struct nvkm_object *object, struct nvkm_gpuobj *parent,
   int align, struct nvkm_gpuobj **pgpuobj)
{
 return nvkm_object_bind(nvkm_oproxy(object)->object,
    parent, align, pgpuobj);
}
