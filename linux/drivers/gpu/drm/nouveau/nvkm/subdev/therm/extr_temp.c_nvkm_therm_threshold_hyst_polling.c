
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_therm {TYPE_1__* func; } ;
struct nvbios_therm_threshold {int temp; int hysteresis; } ;
typedef enum nvkm_therm_thrs_state { ____Placeholder_nvkm_therm_thrs_state } nvkm_therm_thrs_state ;
typedef enum nvkm_therm_thrs_direction { ____Placeholder_nvkm_therm_thrs_direction } nvkm_therm_thrs_direction ;
typedef enum nvkm_therm_thrs { ____Placeholder_nvkm_therm_thrs } nvkm_therm_thrs ;
struct TYPE_2__ {int (* temp_get ) (struct nvkm_therm*) ;} ;


 int NVKM_THERM_THRS_FALLING ;
 int NVKM_THERM_THRS_HIGHER ;
 int NVKM_THERM_THRS_LOWER ;
 int NVKM_THERM_THRS_RISING ;
 int nvkm_therm_sensor_event (struct nvkm_therm*,int,int) ;
 int nvkm_therm_sensor_get_threshold_state (struct nvkm_therm*,int) ;
 int nvkm_therm_sensor_set_threshold_state (struct nvkm_therm*,int,int) ;
 int stub1 (struct nvkm_therm*) ;

__attribute__((used)) static void
nvkm_therm_threshold_hyst_polling(struct nvkm_therm *therm,
      const struct nvbios_therm_threshold *thrs,
      enum nvkm_therm_thrs thrs_name)
{
 enum nvkm_therm_thrs_direction direction;
 enum nvkm_therm_thrs_state prev_state, new_state;
 int temp = therm->func->temp_get(therm);

 prev_state = nvkm_therm_sensor_get_threshold_state(therm, thrs_name);

 if (temp >= thrs->temp && prev_state == NVKM_THERM_THRS_LOWER) {
  direction = NVKM_THERM_THRS_RISING;
  new_state = NVKM_THERM_THRS_HIGHER;
 } else if (temp <= thrs->temp - thrs->hysteresis &&
   prev_state == NVKM_THERM_THRS_HIGHER) {
  direction = NVKM_THERM_THRS_FALLING;
  new_state = NVKM_THERM_THRS_LOWER;
 } else
  return;

 nvkm_therm_sensor_set_threshold_state(therm, thrs_name, new_state);
 nvkm_therm_sensor_event(therm, thrs_name, direction);
}
