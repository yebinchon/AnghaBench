
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int value ;
struct TYPE_2__ {int index; int report_id; int unit_expo; int size; } ;
struct hid_sensor_common {scalar_t__ raw_hystersis; TYPE_1__ sensitivity; int hsdev; } ;
typedef scalar_t__ s32 ;


 int EINVAL ;
 scalar_t__ convert_to_vtf_format (int ,int ,int,int) ;
 int sensor_hub_get_feature (int ,int ,int ,int,scalar_t__*) ;
 int sensor_hub_set_feature (int ,int ,int ,int,scalar_t__*) ;

int hid_sensor_write_raw_hyst_value(struct hid_sensor_common *st,
     int val1, int val2)
{
 s32 value;
 int ret;

 if (val1 < 0 || val2 < 0)
  return -EINVAL;

 value = convert_to_vtf_format(st->sensitivity.size,
    st->sensitivity.unit_expo,
    val1, val2);
 ret = sensor_hub_set_feature(st->hsdev, st->sensitivity.report_id,
         st->sensitivity.index, sizeof(value),
         &value);
 if (ret < 0 || value < 0)
  return -EINVAL;

 ret = sensor_hub_get_feature(st->hsdev,
         st->sensitivity.report_id,
         st->sensitivity.index, sizeof(value),
         &value);
 if (ret < 0 || value < 0)
  return -EINVAL;

 st->raw_hystersis = value;

 return 0;
}
