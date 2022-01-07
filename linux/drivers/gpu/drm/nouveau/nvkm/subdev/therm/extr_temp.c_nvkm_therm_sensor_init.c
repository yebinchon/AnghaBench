
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_therm {TYPE_1__* func; } ;
struct TYPE_2__ {int (* program_alarms ) (struct nvkm_therm*) ;} ;


 int stub1 (struct nvkm_therm*) ;

int
nvkm_therm_sensor_init(struct nvkm_therm *therm)
{
 therm->func->program_alarms(therm);
 return 0;
}
