
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct hid_sensor_custom {TYPE_5__* hsdev; TYPE_4__* report_state; TYPE_2__* power_state; } ;
typedef int report_val ;
typedef int power_val ;
struct TYPE_11__ {int hdev; } ;
struct TYPE_9__ {int index; int report_id; scalar_t__ logical_minimum; } ;
struct TYPE_10__ {TYPE_3__ attribute; } ;
struct TYPE_7__ {int index; int report_id; scalar_t__ logical_minimum; } ;
struct TYPE_8__ {TYPE_1__ attribute; } ;


 int HID_USAGE_SENSOR_PROP_POWER_STATE_D0_FULL_POWER_ENUM ;
 int HID_USAGE_SENSOR_PROP_POWER_STATE_D4_POWER_OFF_ENUM ;
 int HID_USAGE_SENSOR_PROP_REPORTING_STATE_ALL_EVENTS_ENUM ;
 int HID_USAGE_SENSOR_PROP_REPORTING_STATE_NO_EVENTS_ENUM ;
 int hid_err (int ,char*) ;
 int hid_sensor_get_usage_index (TYPE_5__*,int ,int ,int ) ;
 int sensor_hub_set_feature (TYPE_5__*,int ,int ,int,int*) ;

__attribute__((used)) static int set_power_report_state(struct hid_sensor_custom *sensor_inst,
      bool state)
{
 int power_val = -1;
 int report_val = -1;
 u32 power_state_usage_id;
 u32 report_state_usage_id;
 int ret;






 if (state) {
  power_state_usage_id =
   HID_USAGE_SENSOR_PROP_POWER_STATE_D0_FULL_POWER_ENUM;
  report_state_usage_id =
   HID_USAGE_SENSOR_PROP_REPORTING_STATE_ALL_EVENTS_ENUM;
 } else {
  power_state_usage_id =
   HID_USAGE_SENSOR_PROP_POWER_STATE_D4_POWER_OFF_ENUM;
  report_state_usage_id =
   HID_USAGE_SENSOR_PROP_REPORTING_STATE_NO_EVENTS_ENUM;
 }

 if (sensor_inst->power_state)
  power_val = hid_sensor_get_usage_index(sensor_inst->hsdev,
    sensor_inst->power_state->attribute.report_id,
    sensor_inst->power_state->attribute.index,
    power_state_usage_id);
 if (sensor_inst->report_state)
  report_val = hid_sensor_get_usage_index(sensor_inst->hsdev,
    sensor_inst->report_state->attribute.report_id,
    sensor_inst->report_state->attribute.index,
    report_state_usage_id);

 if (power_val >= 0) {
  power_val +=
   sensor_inst->power_state->attribute.logical_minimum;
  ret = sensor_hub_set_feature(sensor_inst->hsdev,
    sensor_inst->power_state->attribute.report_id,
    sensor_inst->power_state->attribute.index,
    sizeof(power_val),
    &power_val);
  if (ret) {
   hid_err(sensor_inst->hsdev->hdev,
    "Set power state failed\n");
   return ret;
  }
 }

 if (report_val >= 0) {
  report_val +=
   sensor_inst->report_state->attribute.logical_minimum;
  ret = sensor_hub_set_feature(sensor_inst->hsdev,
    sensor_inst->report_state->attribute.report_id,
    sensor_inst->report_state->attribute.index,
    sizeof(report_val),
    &report_val);
  if (ret) {
   hid_err(sensor_inst->hsdev->hdev,
    "Set report state failed\n");
   return ret;
  }
 }

 return 0;
}
