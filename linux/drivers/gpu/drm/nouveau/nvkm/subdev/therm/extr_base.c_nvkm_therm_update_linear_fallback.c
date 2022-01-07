
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int temp; } ;
struct TYPE_4__ {TYPE_1__ thrs_fan_boost; } ;
struct nvkm_therm {TYPE_2__ bios_sensor; } ;


 int nvkm_therm_compute_linear_duty (struct nvkm_therm*,int,int ) ;

__attribute__((used)) static int
nvkm_therm_update_linear_fallback(struct nvkm_therm *therm)
{
 u8 max = therm->bios_sensor.thrs_fan_boost.temp;
 return nvkm_therm_compute_linear_duty(therm, 30, max);
}
