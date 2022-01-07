
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_therm {int dummy; } ;


 int g84_sensor_setup (struct nvkm_therm*) ;

void
g84_therm_init(struct nvkm_therm *therm)
{
 g84_sensor_setup(therm);
}
