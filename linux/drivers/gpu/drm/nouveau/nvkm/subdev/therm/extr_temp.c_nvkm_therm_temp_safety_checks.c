
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {void* hysteresis; } ;
struct TYPE_6__ {void* hysteresis; } ;
struct TYPE_5__ {void* hysteresis; } ;
struct TYPE_8__ {void* hysteresis; } ;
struct nvbios_therm_sensor {TYPE_3__ thrs_shutdown; TYPE_2__ thrs_critical; TYPE_1__ thrs_down_clock; TYPE_4__ thrs_fan_boost; } ;
struct nvkm_therm {struct nvbios_therm_sensor bios_sensor; } ;


 void* max_t (int ,void*,int) ;
 int u8 ;

__attribute__((used)) static void
nvkm_therm_temp_safety_checks(struct nvkm_therm *therm)
{
 struct nvbios_therm_sensor *s = &therm->bios_sensor;


 s->thrs_fan_boost.hysteresis = max_t(u8, s->thrs_fan_boost.hysteresis, 2);
 s->thrs_down_clock.hysteresis = max_t(u8, s->thrs_down_clock.hysteresis, 2);
 s->thrs_critical.hysteresis = max_t(u8, s->thrs_critical.hysteresis, 2);
 s->thrs_shutdown.hysteresis = max_t(u8, s->thrs_shutdown.hysteresis, 2);
}
