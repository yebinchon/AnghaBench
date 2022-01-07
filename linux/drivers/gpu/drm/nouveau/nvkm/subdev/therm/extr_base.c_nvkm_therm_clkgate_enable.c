
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_therm {TYPE_1__* func; int subdev; int clkgating_enabled; } ;
struct TYPE_2__ {int (* clkgate_enable ) (struct nvkm_therm*) ;} ;


 int nvkm_debug (int *,char*) ;
 int stub1 (struct nvkm_therm*) ;

void
nvkm_therm_clkgate_enable(struct nvkm_therm *therm)
{
 if (!therm || !therm->func->clkgate_enable || !therm->clkgating_enabled)
  return;

 nvkm_debug(&therm->subdev,
     "Enabling clockgating\n");
 therm->func->clkgate_enable(therm);
}
