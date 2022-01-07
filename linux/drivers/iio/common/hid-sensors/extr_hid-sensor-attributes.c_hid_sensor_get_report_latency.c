
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int value ;
struct TYPE_2__ {int index; int report_id; } ;
struct hid_sensor_common {TYPE_1__ report_latency; int hsdev; } ;


 int sensor_hub_get_feature (int ,int ,int ,int,int*) ;

int hid_sensor_get_report_latency(struct hid_sensor_common *st)
{
 int ret;
 int value;

 ret = sensor_hub_get_feature(st->hsdev, st->report_latency.report_id,
         st->report_latency.index, sizeof(value),
         &value);
 if (ret < 0)
  return ret;

 return value;
}
