
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_oclass {TYPE_2__* engine; } ;
struct nvkm_object {int dummy; } ;
struct TYPE_3__ {int device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;


 int nvkm_dma_oclass_new (int ,struct nvkm_oclass const*,void*,int ,struct nvkm_object**) ;

__attribute__((used)) static int
nvkm_dma_oclass_fifo_new(const struct nvkm_oclass *oclass, void *data, u32 size,
    struct nvkm_object **pobject)
{
 return nvkm_dma_oclass_new(oclass->engine->subdev.device,
       oclass, data, size, pobject);
}
