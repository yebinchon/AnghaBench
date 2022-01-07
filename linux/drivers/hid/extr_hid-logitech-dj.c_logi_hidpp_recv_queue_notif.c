
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int workitem ;
struct hidpp_event {int* params; int device_index; } ;
struct hid_device {int dummy; } ;
struct dj_workitem {scalar_t__ type; int reports_supported; int device_index; } ;
struct dj_receiver_dev {int work; int notif_fifo; } ;


 int HIDPP ;
 int HIDPP_MANUFACTURER_MASK ;
 size_t HIDPP_PARAM_DEVICE_INFO ;
 size_t HIDPP_PARAM_PROTO_TYPE ;
 int STD_KEYBOARD ;
 scalar_t__ WORKITEM_TYPE_EMPTY ;
 struct dj_receiver_dev* hid_get_drvdata (struct hid_device*) ;
 int hid_info (struct hid_device*,char*,char const*,...) ;
 int hid_warn (struct hid_device*,char*,char const*,int,int ) ;
 int kfifo_in (int *,struct dj_workitem*,int) ;
 int logi_hidpp_dev_conn_notif_27mhz (struct hid_device*,struct hidpp_event*,struct dj_workitem*) ;
 int logi_hidpp_dev_conn_notif_equad (struct hid_device*,struct hidpp_event*,struct dj_workitem*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void logi_hidpp_recv_queue_notif(struct hid_device *hdev,
     struct hidpp_event *hidpp_report)
{

 struct dj_receiver_dev *djrcv_dev = hid_get_drvdata(hdev);
 const char *device_type = "UNKNOWN";
 struct dj_workitem workitem = {
  .type = WORKITEM_TYPE_EMPTY,
  .device_index = hidpp_report->device_index,
 };

 switch (hidpp_report->params[HIDPP_PARAM_PROTO_TYPE]) {
 case 0x01:
  device_type = "Bluetooth";

  logi_hidpp_dev_conn_notif_equad(hdev, hidpp_report, &workitem);
  if (!(hidpp_report->params[HIDPP_PARAM_DEVICE_INFO] &
      HIDPP_MANUFACTURER_MASK)) {
   hid_info(hdev, "Non Logitech device connected on slot %d\n",
     hidpp_report->device_index);
   workitem.reports_supported &= ~HIDPP;
  }
  break;
 case 0x02:
  device_type = "27 Mhz";
  logi_hidpp_dev_conn_notif_27mhz(hdev, hidpp_report, &workitem);
  break;
 case 0x03:
  device_type = "QUAD or eQUAD";
  logi_hidpp_dev_conn_notif_equad(hdev, hidpp_report, &workitem);
  break;
 case 0x04:
  device_type = "eQUAD step 4 DJ";
  logi_hidpp_dev_conn_notif_equad(hdev, hidpp_report, &workitem);
  break;
 case 0x05:
  device_type = "DFU Lite";
  break;
 case 0x06:
  device_type = "eQUAD step 4 Lite";
  logi_hidpp_dev_conn_notif_equad(hdev, hidpp_report, &workitem);
  break;
 case 0x07:
  device_type = "eQUAD step 4 Gaming";
  logi_hidpp_dev_conn_notif_equad(hdev, hidpp_report, &workitem);
  break;
 case 0x08:
  device_type = "eQUAD step 4 for gamepads";
  break;
 case 0x0a:
  device_type = "eQUAD nano Lite";
  logi_hidpp_dev_conn_notif_equad(hdev, hidpp_report, &workitem);
  break;
 case 0x0c:
  device_type = "eQUAD Lightspeed 1";
  logi_hidpp_dev_conn_notif_equad(hdev, hidpp_report, &workitem);
  workitem.reports_supported |= STD_KEYBOARD;
  break;
 case 0x0d:
  device_type = "eQUAD Lightspeed 1_1";
  logi_hidpp_dev_conn_notif_equad(hdev, hidpp_report, &workitem);
  workitem.reports_supported |= STD_KEYBOARD;
  break;
 }

 if (workitem.type == WORKITEM_TYPE_EMPTY) {
  hid_warn(hdev,
    "unusable device of type %s (0x%02x) connected on slot %d",
    device_type,
    hidpp_report->params[HIDPP_PARAM_PROTO_TYPE],
    hidpp_report->device_index);
  return;
 }

 hid_info(hdev, "device of type %s (0x%02x) connected on slot %d",
   device_type, hidpp_report->params[HIDPP_PARAM_PROTO_TYPE],
   hidpp_report->device_index);

 kfifo_in(&djrcv_dev->notif_fifo, &workitem, sizeof(workitem));
 schedule_work(&djrcv_dev->work);
}
