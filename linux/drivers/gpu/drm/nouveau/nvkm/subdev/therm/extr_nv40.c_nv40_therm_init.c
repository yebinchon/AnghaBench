
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_therm {int dummy; } ;


 int nv40_sensor_setup (struct nvkm_therm*) ;

__attribute__((used)) static void
nv40_therm_init(struct nvkm_therm *therm)
{
 nv40_sensor_setup(therm);
}
