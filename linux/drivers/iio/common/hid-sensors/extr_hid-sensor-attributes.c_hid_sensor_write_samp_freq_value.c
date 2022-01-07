
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int value ;
struct TYPE_2__ {scalar_t__ units; int index; int report_id; } ;
struct hid_sensor_common {int poll_interval; TYPE_1__ poll; int hsdev; } ;
typedef int s32 ;


 int EINVAL ;
 scalar_t__ HID_USAGE_SENSOR_UNITS_MILLISECOND ;
 scalar_t__ HID_USAGE_SENSOR_UNITS_SECOND ;
 int HZ_PER_MHZ ;
 int NSEC_PER_SEC ;
 int USEC_PER_SEC ;
 int sensor_hub_get_feature (int ,int ,int ,int,int*) ;
 int sensor_hub_set_feature (int ,int ,int ,int,int*) ;

int hid_sensor_write_samp_freq_value(struct hid_sensor_common *st,
    int val1, int val2)
{
 s32 value;
 int ret;

 if (val1 < 0 || val2 < 0)
  return -EINVAL;

 value = val1 * HZ_PER_MHZ + val2;
 if (value) {
  if (st->poll.units == HID_USAGE_SENSOR_UNITS_MILLISECOND)
   value = NSEC_PER_SEC / value;
  else if (st->poll.units == HID_USAGE_SENSOR_UNITS_SECOND)
   value = USEC_PER_SEC / value;
  else
   value = 0;
 }
 ret = sensor_hub_set_feature(st->hsdev, st->poll.report_id,
         st->poll.index, sizeof(value), &value);
 if (ret < 0 || value < 0)
  return -EINVAL;

 ret = sensor_hub_get_feature(st->hsdev,
         st->poll.report_id,
         st->poll.index, sizeof(value), &value);
 if (ret < 0 || value < 0)
  return -EINVAL;

 st->poll_interval = value;

 return 0;
}
