
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_therm {int dummy; } ;


 int nvkm_therm_fan_get (struct nvkm_therm*) ;

int
nvkm_therm_fan_user_get(struct nvkm_therm *therm)
{
 return nvkm_therm_fan_get(therm);
}
