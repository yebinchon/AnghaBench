
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int index; int report_id; } ;
struct hid_sensor_common {TYPE_1__ report_latency; int hsdev; } ;
typedef int latency_ms ;


 int sensor_hub_set_feature (int ,int ,int ,int,int*) ;

int hid_sensor_set_report_latency(struct hid_sensor_common *st, int latency_ms)
{
 return sensor_hub_set_feature(st->hsdev, st->report_latency.report_id,
          st->report_latency.index,
          sizeof(latency_ms), &latency_ms);
}
