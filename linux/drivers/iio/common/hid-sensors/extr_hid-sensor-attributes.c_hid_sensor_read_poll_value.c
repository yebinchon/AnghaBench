
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int value ;
struct TYPE_2__ {scalar_t__ units; int index; int report_id; } ;
struct hid_sensor_common {TYPE_1__ poll; int hsdev; } ;
typedef int s32 ;


 int EINVAL ;
 scalar_t__ HID_USAGE_SENSOR_UNITS_SECOND ;
 int sensor_hub_get_feature (int ,int ,int ,int,int*) ;

s32 hid_sensor_read_poll_value(struct hid_sensor_common *st)
{
 s32 value = 0;
 int ret;

 ret = sensor_hub_get_feature(st->hsdev,
         st->poll.report_id,
         st->poll.index, sizeof(value), &value);

 if (ret < 0 || value < 0) {
  return -EINVAL;
 } else {
  if (st->poll.units == HID_USAGE_SENSOR_UNITS_SECOND)
   value = value * 1000;
 }

 return value;
}
