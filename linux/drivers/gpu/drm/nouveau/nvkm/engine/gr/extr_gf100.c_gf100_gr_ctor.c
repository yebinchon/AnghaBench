
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_device {int cfgopt; } ;
struct TYPE_2__ {int * ucode; } ;
struct gf100_gr_func {TYPE_1__ fecs; } ;
struct gf100_gr {int base; scalar_t__ firmware; struct gf100_gr_func const* func; } ;


 int gf100_gr_ ;
 scalar_t__ nvkm_boolopt (int ,char*,int ) ;
 int nvkm_gr_ctor (int *,struct nvkm_device*,int,int,int *) ;

int
gf100_gr_ctor(const struct gf100_gr_func *func, struct nvkm_device *device,
       int index, struct gf100_gr *gr)
{
 gr->func = func;
 gr->firmware = nvkm_boolopt(device->cfgopt, "NvGrUseFW",
        func->fecs.ucode == ((void*)0));

 return nvkm_gr_ctor(&gf100_gr_, device, index,
       gr->firmware || func->fecs.ucode != ((void*)0),
       &gr->base);
}
