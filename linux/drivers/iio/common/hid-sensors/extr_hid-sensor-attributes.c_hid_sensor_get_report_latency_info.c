
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hid_sensor_hub_device {int hdev; } ;
struct TYPE_2__ {int report_id; int index; } ;
struct hid_sensor_common {TYPE_1__ report_latency; } ;


 int HID_FEATURE_REPORT ;
 int HID_USAGE_SENSOR_PROP_REPORT_LATENCY ;
 int hid_dbg (int ,char*,int ,int ) ;
 int sensor_hub_input_get_attribute_info (struct hid_sensor_hub_device*,int ,int ,int ,TYPE_1__*) ;

__attribute__((used)) static void hid_sensor_get_report_latency_info(struct hid_sensor_hub_device *hsdev,
            u32 usage_id,
            struct hid_sensor_common *st)
{
 sensor_hub_input_get_attribute_info(hsdev, HID_FEATURE_REPORT,
         usage_id,
         HID_USAGE_SENSOR_PROP_REPORT_LATENCY,
         &st->report_latency);

 hid_dbg(hsdev->hdev, "Report latency attributes: %x:%x\n",
  st->report_latency.index, st->report_latency.report_id);
}
