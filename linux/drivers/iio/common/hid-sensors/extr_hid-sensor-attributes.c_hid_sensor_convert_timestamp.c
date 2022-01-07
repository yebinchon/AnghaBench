
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_sensor_common {int timestamp_ns_scale; } ;
typedef int int64_t ;



int64_t hid_sensor_convert_timestamp(struct hid_sensor_common *st,
         int64_t raw_value)
{
 return st->timestamp_ns_scale * raw_value;
}
