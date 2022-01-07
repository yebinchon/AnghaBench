
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_therm {int fan; } ;


 int nvkm_fan_update (int ,int,int) ;

int
nvkm_therm_fan_set(struct nvkm_therm *therm, bool immediate, int percent)
{
 return nvkm_fan_update(therm->fan, immediate, percent);
}
