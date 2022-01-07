
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dj_report {size_t device_index; int report_type; } ;
struct dj_receiver_dev {struct dj_device** paired_dj_devices; } ;
struct dj_device {int hdev; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int HID_INPUT_REPORT ;
 int dbg_hid (char*,...) ;
 scalar_t__ hid_input_report (int ,int ,size_t*,scalar_t__,int) ;
 scalar_t__* hid_reportid_size_map ;

__attribute__((used)) static void logi_dj_recv_forward_dj(struct dj_receiver_dev *djrcv_dev,
        struct dj_report *dj_report)
{

 struct dj_device *dj_device;

 dj_device = djrcv_dev->paired_dj_devices[dj_report->device_index];

 if ((dj_report->report_type > ARRAY_SIZE(hid_reportid_size_map) - 1) ||
     (hid_reportid_size_map[dj_report->report_type] == 0)) {
  dbg_hid("invalid report type:%x\n", dj_report->report_type);
  return;
 }

 if (hid_input_report(dj_device->hdev,
   HID_INPUT_REPORT, &dj_report->report_type,
   hid_reportid_size_map[dj_report->report_type], 1)) {
  dbg_hid("hid_input_report error\n");
 }
}
