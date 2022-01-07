
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_therm {scalar_t__ mode; } ;


 int EINVAL ;
 scalar_t__ NVKM_THERM_CTRL_MANUAL ;
 int nvkm_therm_fan_set (struct nvkm_therm*,int,int) ;

int
nvkm_therm_fan_user_set(struct nvkm_therm *therm, int percent)
{
 if (therm->mode != NVKM_THERM_CTRL_MANUAL)
  return -EINVAL;

 return nvkm_therm_fan_set(therm, 1, percent);
}
