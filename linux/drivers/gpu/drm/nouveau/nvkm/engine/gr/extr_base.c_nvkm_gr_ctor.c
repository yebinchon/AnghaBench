
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_gr_func {int dummy; } ;
struct nvkm_gr {int engine; struct nvkm_gr_func const* func; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_engine_ctor (int *,struct nvkm_device*,int,int,int *) ;
 int nvkm_gr ;

int
nvkm_gr_ctor(const struct nvkm_gr_func *func, struct nvkm_device *device,
      int index, bool enable, struct nvkm_gr *gr)
{
 gr->func = func;
 return nvkm_engine_ctor(&nvkm_gr, device, index, enable, &gr->engine);
}
