
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_oclass {int engine; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_fifo {TYPE_1__* func; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_2__ {int (* class_new ) (struct nvkm_fifo*,struct nvkm_oclass const*,void*,int ,struct nvkm_object**) ;} ;


 struct nvkm_fifo* nvkm_fifo (int ) ;
 int stub1 (struct nvkm_fifo*,struct nvkm_oclass const*,void*,int ,struct nvkm_object**) ;

__attribute__((used)) static int
nvkm_fifo_class_new_(struct nvkm_device *device,
       const struct nvkm_oclass *oclass, void *data, u32 size,
       struct nvkm_object **pobject)
{
 struct nvkm_fifo *fifo = nvkm_fifo(oclass->engine);
 return fifo->func->class_new(fifo, oclass, data, size, pobject);
}
