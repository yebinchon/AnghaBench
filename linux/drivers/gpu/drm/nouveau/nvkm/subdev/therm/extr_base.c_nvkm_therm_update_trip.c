
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef size_t u16 ;
struct nvkm_therm {struct nvbios_therm_trip_point* last_trip; TYPE_3__* fan; TYPE_1__* func; } ;
struct nvbios_therm_trip_point {scalar_t__ temp; scalar_t__ hysteresis; size_t fan_duty; } ;
struct TYPE_5__ {size_t nr_fan_trip; struct nvbios_therm_trip_point* trip; } ;
struct TYPE_6__ {TYPE_2__ bios; } ;
struct TYPE_4__ {scalar_t__ (* temp_get ) (struct nvkm_therm*) ;} ;


 scalar_t__ stub1 (struct nvkm_therm*) ;

__attribute__((used)) static int
nvkm_therm_update_trip(struct nvkm_therm *therm)
{
 struct nvbios_therm_trip_point *trip = therm->fan->bios.trip,
           *cur_trip = ((void*)0),
           *last_trip = therm->last_trip;
 u8 temp = therm->func->temp_get(therm);
 u16 duty, i;


 cur_trip = ((void*)0);
 for (i = 0; i < therm->fan->bios.nr_fan_trip; i++) {
  if (temp >= trip[i].temp)
   cur_trip = &trip[i];
 }


 if (last_trip && temp <= (last_trip->temp) &&
     temp > (last_trip->temp - last_trip->hysteresis))
  cur_trip = last_trip;

 if (cur_trip) {
  duty = cur_trip->fan_duty;
  therm->last_trip = cur_trip;
 } else {
  duty = 0;
  therm->last_trip = ((void*)0);
 }

 return duty;
}
