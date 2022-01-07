
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_therm {int subdev; int clkgating_enabled; TYPE_1__* func; } ;
struct TYPE_2__ {int clkgate_enable; } ;


 int nvkm_info (int *,char*) ;

__attribute__((used)) static void
nvkm_therm_clkgate_oneinit(struct nvkm_therm *therm)
{
 if (!therm->func->clkgate_enable || !therm->clkgating_enabled)
  return;

 nvkm_info(&therm->subdev, "Clockgating enabled\n");
}
