
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_oclass {int engine; struct nvkm_fifo_chan_oclass* engn; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_fifo_chan_oclass {int (* ctor ) (struct nvkm_fifo*,struct nvkm_oclass const*,void*,int ,struct nvkm_object**) ;} ;
struct nvkm_fifo {int dummy; } ;
struct nvkm_device {int dummy; } ;


 struct nvkm_fifo* nvkm_fifo (int ) ;
 int stub1 (struct nvkm_fifo*,struct nvkm_oclass const*,void*,int ,struct nvkm_object**) ;

__attribute__((used)) static int
nvkm_fifo_class_new(struct nvkm_device *device,
      const struct nvkm_oclass *oclass, void *data, u32 size,
      struct nvkm_object **pobject)
{
 const struct nvkm_fifo_chan_oclass *sclass = oclass->engn;
 struct nvkm_fifo *fifo = nvkm_fifo(oclass->engine);
 return sclass->ctor(fifo, oclass, data, size, pobject);
}
