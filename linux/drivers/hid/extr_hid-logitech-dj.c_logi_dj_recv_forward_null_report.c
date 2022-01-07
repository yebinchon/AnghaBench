
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct dj_report {size_t device_index; } ;
struct dj_receiver_dev {struct dj_device** paired_dj_devices; } ;
struct dj_device {int reports_supported; int hdev; } ;
typedef int reportbuffer ;


 int HID_INPUT_REPORT ;
 int MAX_REPORT_SIZE ;
 unsigned int NUMBER_OF_HID_REPORTS ;
 int dbg_hid (char*) ;
 scalar_t__ hid_input_report (int ,int ,unsigned int*,int ,int) ;
 int * hid_reportid_size_map ;
 int memset (unsigned int*,int ,int) ;

__attribute__((used)) static void logi_dj_recv_forward_null_report(struct dj_receiver_dev *djrcv_dev,
          struct dj_report *dj_report)
{

 unsigned int i;
 u8 reportbuffer[MAX_REPORT_SIZE];
 struct dj_device *djdev;

 djdev = djrcv_dev->paired_dj_devices[dj_report->device_index];

 memset(reportbuffer, 0, sizeof(reportbuffer));

 for (i = 0; i < NUMBER_OF_HID_REPORTS; i++) {
  if (djdev->reports_supported & (1 << i)) {
   reportbuffer[0] = i;
   if (hid_input_report(djdev->hdev,
          HID_INPUT_REPORT,
          reportbuffer,
          hid_reportid_size_map[i], 1)) {
    dbg_hid("hid_input_report error sending null "
     "report\n");
   }
  }
 }
}
