
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_therm {TYPE_1__* func; } ;
struct TYPE_2__ {int (* temp_get ) (struct nvkm_therm*) ;} ;


 int ENODEV ;
 int stub1 (struct nvkm_therm*) ;

int
nvkm_therm_temp_get(struct nvkm_therm *therm)
{
 if (therm->func->temp_get)
  return therm->func->temp_get(therm);
 return -ENODEV;
}
