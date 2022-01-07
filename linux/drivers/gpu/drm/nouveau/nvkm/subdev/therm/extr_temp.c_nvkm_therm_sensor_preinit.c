
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_therm {int subdev; TYPE_1__* func; } ;
struct TYPE_2__ {scalar_t__ (* temp_get ) (struct nvkm_therm*) ;} ;


 int nvkm_debug (int *,char*,char const*) ;
 scalar_t__ stub1 (struct nvkm_therm*) ;

void
nvkm_therm_sensor_preinit(struct nvkm_therm *therm)
{
 const char *sensor_avail = "yes";

 if (therm->func->temp_get(therm) < 0)
  sensor_avail = "no";

 nvkm_debug(&therm->subdev, "internal sensor: %s\n", sensor_avail);
}
