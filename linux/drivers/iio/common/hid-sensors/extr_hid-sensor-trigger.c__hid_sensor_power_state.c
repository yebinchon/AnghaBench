
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int index; int report_id; scalar_t__ logical_minimum; } ;
struct TYPE_4__ {int index; int report_id; scalar_t__ logical_minimum; } ;
struct hid_sensor_common {TYPE_3__ power_state; int hsdev; TYPE_2__* pdev; TYPE_1__ report_state; int data_ready; } ;
typedef int state_val ;
typedef int s32 ;
typedef int report_val ;
struct TYPE_5__ {int name; } ;


 int EIO ;
 int HID_USAGE_SENSOR_PROP_POWER_STATE_D0_FULL_POWER_ENUM ;
 int HID_USAGE_SENSOR_PROP_POWER_STATE_D4_POWER_OFF_ENUM ;
 int HID_USAGE_SENSOR_PROP_REPORTING_STATE_ALL_EVENTS_ENUM ;
 int HID_USAGE_SENSOR_PROP_REPORTING_STATE_NO_EVENTS_ENUM ;
 int atomic_dec_if_positive (int *) ;
 int atomic_inc (int *) ;
 int hid_sensor_get_usage_index (int ,int ,int ,int ) ;
 int hid_sensor_read_poll_value (struct hid_sensor_common*) ;
 int msleep_interruptible (int) ;
 int pr_debug (char*,int ,int,int) ;
 int sensor_hub_device_close (int ) ;
 scalar_t__ sensor_hub_device_open (int ) ;
 int sensor_hub_get_feature (int ,int ,int ,int,int*) ;
 int sensor_hub_set_feature (int ,int ,int ,int,int*) ;

__attribute__((used)) static int _hid_sensor_power_state(struct hid_sensor_common *st, bool state)
{
 int state_val;
 int report_val;
 s32 poll_value = 0;

 if (state) {
  if (sensor_hub_device_open(st->hsdev))
   return -EIO;

  atomic_inc(&st->data_ready);

  state_val = hid_sensor_get_usage_index(st->hsdev,
   st->power_state.report_id,
   st->power_state.index,
   HID_USAGE_SENSOR_PROP_POWER_STATE_D0_FULL_POWER_ENUM);
  report_val = hid_sensor_get_usage_index(st->hsdev,
   st->report_state.report_id,
   st->report_state.index,
   HID_USAGE_SENSOR_PROP_REPORTING_STATE_ALL_EVENTS_ENUM);

  poll_value = hid_sensor_read_poll_value(st);
 } else {
  int val;

  val = atomic_dec_if_positive(&st->data_ready);
  if (val < 0)
   return 0;

  sensor_hub_device_close(st->hsdev);
  state_val = hid_sensor_get_usage_index(st->hsdev,
   st->power_state.report_id,
   st->power_state.index,
   HID_USAGE_SENSOR_PROP_POWER_STATE_D4_POWER_OFF_ENUM);
  report_val = hid_sensor_get_usage_index(st->hsdev,
   st->report_state.report_id,
   st->report_state.index,
   HID_USAGE_SENSOR_PROP_REPORTING_STATE_NO_EVENTS_ENUM);
 }

 if (state_val >= 0) {
  state_val += st->power_state.logical_minimum;
  sensor_hub_set_feature(st->hsdev, st->power_state.report_id,
           st->power_state.index, sizeof(state_val),
           &state_val);
 }

 if (report_val >= 0) {
  report_val += st->report_state.logical_minimum;
  sensor_hub_set_feature(st->hsdev, st->report_state.report_id,
           st->report_state.index,
           sizeof(report_val),
           &report_val);
 }

 pr_debug("HID_SENSOR %s set power_state %d report_state %d\n",
   st->pdev->name, state_val, report_val);

 sensor_hub_get_feature(st->hsdev, st->power_state.report_id,
          st->power_state.index,
          sizeof(state_val), &state_val);
 if (state && poll_value)
  msleep_interruptible(poll_value * 2);

 return 0;
}
