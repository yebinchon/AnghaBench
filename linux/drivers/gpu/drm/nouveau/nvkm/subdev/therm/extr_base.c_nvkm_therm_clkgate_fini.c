
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_therm {TYPE_1__* func; int subdev; int clkgating_enabled; } ;
struct TYPE_2__ {int (* clkgate_fini ) (struct nvkm_therm*,int) ;} ;


 int nvkm_debug (int *,char*,char*) ;
 int stub1 (struct nvkm_therm*,int) ;

void
nvkm_therm_clkgate_fini(struct nvkm_therm *therm, bool suspend)
{
 if (!therm || !therm->func->clkgate_fini || !therm->clkgating_enabled)
  return;

 nvkm_debug(&therm->subdev,
     "Preparing clockgating for %s\n",
     suspend ? "suspend" : "fini");
 therm->func->clkgate_fini(therm, suspend);
}
