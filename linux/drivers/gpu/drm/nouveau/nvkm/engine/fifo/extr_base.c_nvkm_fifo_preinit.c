
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;
struct nvkm_engine {TYPE_1__ subdev; } ;


 int NVKM_ENGINE_FIFO ;
 int nvkm_mc_reset (int ,int ) ;

__attribute__((used)) static void
nvkm_fifo_preinit(struct nvkm_engine *engine)
{
 nvkm_mc_reset(engine->subdev.device, NVKM_ENGINE_FIFO);
}
