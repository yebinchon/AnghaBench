
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_therm {int dummy; } ;
struct nvkm_device {int dummy; } ;


 int gk104_clkgate_engine_info ;
 int gk104_idle_filter ;
 int gk104_therm_func ;
 int gk104_therm_new_ (int *,struct nvkm_device*,int,int ,int *,struct nvkm_therm**) ;

int
gk104_therm_new(struct nvkm_device *device,
  int index, struct nvkm_therm **ptherm)
{
 return gk104_therm_new_(&gk104_therm_func, device, index,
    gk104_clkgate_engine_info, &gk104_idle_filter,
    ptherm);
}
