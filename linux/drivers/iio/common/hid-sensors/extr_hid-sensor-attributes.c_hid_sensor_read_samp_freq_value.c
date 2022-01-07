
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int value ;
struct TYPE_2__ {scalar_t__ units; int index; int report_id; } ;
struct hid_sensor_common {TYPE_1__ poll; int hsdev; } ;
typedef scalar_t__ s32 ;


 int EINVAL ;
 scalar_t__ HID_USAGE_SENSOR_UNITS_MILLISECOND ;
 scalar_t__ HID_USAGE_SENSOR_UNITS_SECOND ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int sensor_hub_get_feature (int ,int ,int ,int,scalar_t__*) ;
 int simple_div (int,scalar_t__,int*,int*) ;

int hid_sensor_read_samp_freq_value(struct hid_sensor_common *st,
    int *val1, int *val2)
{
 s32 value;
 int ret;

 ret = sensor_hub_get_feature(st->hsdev,
         st->poll.report_id,
         st->poll.index, sizeof(value), &value);
 if (ret < 0 || value < 0) {
  *val1 = *val2 = 0;
  return -EINVAL;
 } else {
  if (st->poll.units == HID_USAGE_SENSOR_UNITS_MILLISECOND)
   simple_div(1000, value, val1, val2);
  else if (st->poll.units == HID_USAGE_SENSOR_UNITS_SECOND)
   simple_div(1, value, val1, val2);
  else {
   *val1 = *val2 = 0;
   return -EINVAL;
  }
 }

 return IIO_VAL_INT_PLUS_MICRO;
}
