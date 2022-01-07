
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_therm_clkgate_pack {int dummy; } ;
struct nvkm_therm {TYPE_1__* func; int clkgating_enabled; } ;
struct TYPE_2__ {int (* clkgate_init ) (struct nvkm_therm*,struct nvkm_therm_clkgate_pack const*) ;} ;


 int stub1 (struct nvkm_therm*,struct nvkm_therm_clkgate_pack const*) ;

void
nvkm_therm_clkgate_init(struct nvkm_therm *therm,
   const struct nvkm_therm_clkgate_pack *p)
{
 if (!therm || !therm->func->clkgate_init || !therm->clkgating_enabled)
  return;

 therm->func->clkgate_init(therm, p);
}
