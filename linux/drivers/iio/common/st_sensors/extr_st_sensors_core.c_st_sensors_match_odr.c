
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* odr_avl; } ;
struct st_sensor_settings {TYPE_1__ odr; } ;
struct st_sensor_odr_avl {unsigned int hz; int value; } ;
struct TYPE_4__ {unsigned int hz; int value; } ;


 int EINVAL ;
 int ST_SENSORS_ODR_LIST_MAX ;

__attribute__((used)) static int st_sensors_match_odr(struct st_sensor_settings *sensor_settings,
   unsigned int odr, struct st_sensor_odr_avl *odr_out)
{
 int i, ret = -EINVAL;

 for (i = 0; i < ST_SENSORS_ODR_LIST_MAX; i++) {
  if (sensor_settings->odr.odr_avl[i].hz == 0)
   goto st_sensors_match_odr_error;

  if (sensor_settings->odr.odr_avl[i].hz == odr) {
   odr_out->hz = sensor_settings->odr.odr_avl[i].hz;
   odr_out->value = sensor_settings->odr.odr_avl[i].value;
   ret = 0;
   break;
  }
 }

st_sensors_match_odr_error:
 return ret;
}
