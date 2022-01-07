
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int value ;
struct TYPE_2__ {int unit_expo; int size; int index; int report_id; } ;
struct hid_sensor_common {TYPE_1__ sensitivity; int hsdev; } ;
typedef scalar_t__ s32 ;


 int EINVAL ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int convert_from_vtf_format (scalar_t__,int ,int ,int*,int*) ;
 int sensor_hub_get_feature (int ,int ,int ,int,scalar_t__*) ;

int hid_sensor_read_raw_hyst_value(struct hid_sensor_common *st,
    int *val1, int *val2)
{
 s32 value;
 int ret;

 ret = sensor_hub_get_feature(st->hsdev,
         st->sensitivity.report_id,
         st->sensitivity.index, sizeof(value),
         &value);
 if (ret < 0 || value < 0) {
  *val1 = *val2 = 0;
  return -EINVAL;
 } else {
  convert_from_vtf_format(value, st->sensitivity.size,
     st->sensitivity.unit_expo,
     val1, val2);
 }

 return IIO_VAL_INT_PLUS_MICRO;
}
