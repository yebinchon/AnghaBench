
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct picolcd_data {int addr_sz; } ;
struct hid_report {int id; } ;
struct hid_device {int debug_wait; int debug_list; } ;


 size_t ARRAY_SIZE (char**) ;
 int BUFF_SZ ;
 int GFP_ATOMIC ;
 int dump_buff_as_hex (char*,int ,size_t*,size_t) ;
 char** error_codes ;
 int hid_debug_event (struct hid_device*,char*) ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 scalar_t__ list_empty (int *) ;
 int snprintf (char*,int ,char*,...) ;
 int wake_up_interruptible (int *) ;

void picolcd_debug_raw_event(struct picolcd_data *data,
  struct hid_device *hdev, struct hid_report *report,
  u8 *raw_data, int size)
{
 char *buff;



 if (list_empty(&hdev->debug_list))
  return;

 buff = kmalloc(256, GFP_ATOMIC);
 if (!buff)
  return;

 switch (report->id) {
 case 134:

  snprintf(buff, 256, "report %s (%d, size=%d)\n",
   "REPORT_ERROR_CODE", report->id, size-1);
  hid_debug_event(hdev, buff);
  if (raw_data[2] < ARRAY_SIZE(error_codes))
   snprintf(buff, 256, "\tError code 0x%02x (%s) in reply to report 0x%02x\n",
     raw_data[2], error_codes[raw_data[2]], raw_data[1]);
  else
   snprintf(buff, 256, "\tError code 0x%02x in reply to report 0x%02x\n",
     raw_data[2], raw_data[1]);
  hid_debug_event(hdev, buff);
  break;
 case 131:

  snprintf(buff, 256, "report %s (%d, size=%d)\n",
   "REPORT_KEY_STATE", report->id, size-1);
  hid_debug_event(hdev, buff);
  if (raw_data[1] == 0)
   snprintf(buff, 256, "\tNo key pressed\n");
  else if (raw_data[2] == 0)
   snprintf(buff, 256, "\tOne key pressed: 0x%02x (%d)\n",
     raw_data[1], raw_data[1]);
  else
   snprintf(buff, 256, "\tTwo keys pressed: 0x%02x (%d), 0x%02x (%d)\n",
     raw_data[1], raw_data[1], raw_data[2], raw_data[2]);
  hid_debug_event(hdev, buff);
  break;
 case 132:

  snprintf(buff, 256, "report %s (%d, size=%d)\n",
   "REPORT_IR_DATA", report->id, size-1);
  hid_debug_event(hdev, buff);
  if (raw_data[1] == 0) {
   snprintf(buff, 256, "\tUnexpectedly 0 data length\n");
   hid_debug_event(hdev, buff);
  } else if (raw_data[1] + 1 <= size) {
   snprintf(buff, 256, "\tData length: %d\n\tIR Data: ",
     raw_data[1]);
   hid_debug_event(hdev, buff);
   dump_buff_as_hex(buff, 256, raw_data+2, raw_data[1]);
   hid_debug_event(hdev, buff);
  } else {
   snprintf(buff, 256, "\tOverflowing data length: %d\n",
     raw_data[1]-1);
   hid_debug_event(hdev, buff);
  }
  break;
 case 135:

  snprintf(buff, 256, "report %s (%d, size=%d)\n",
   "REPORT_EE_DATA", report->id, size-1);
  hid_debug_event(hdev, buff);
  snprintf(buff, 256, "\tData address: 0x%02x%02x\n",
    raw_data[2], raw_data[1]);
  hid_debug_event(hdev, buff);
  snprintf(buff, 256, "\tData length: %d\n", raw_data[3]);
  hid_debug_event(hdev, buff);
  if (raw_data[3] == 0) {
   snprintf(buff, 256, "\tNo data\n");
   hid_debug_event(hdev, buff);
  } else if (raw_data[3] + 4 <= size) {
   snprintf(buff, 256, "\tData: ");
   hid_debug_event(hdev, buff);
   dump_buff_as_hex(buff, 256, raw_data+4, raw_data[3]);
   hid_debug_event(hdev, buff);
  } else {
   snprintf(buff, 256, "\tData overflowed\n");
   hid_debug_event(hdev, buff);
  }
  break;
 case 130:

  snprintf(buff, 256, "report %s (%d, size=%d)\n",
   "REPORT_MEMORY", report->id, size-1);
  hid_debug_event(hdev, buff);
  switch (data->addr_sz) {
  case 2:
   snprintf(buff, 256, "\tData address: 0x%02x%02x\n",
     raw_data[2], raw_data[1]);
   hid_debug_event(hdev, buff);
   snprintf(buff, 256, "\tData length: %d\n", raw_data[3]);
   hid_debug_event(hdev, buff);
   if (raw_data[3] == 0) {
    snprintf(buff, 256, "\tNo data\n");
   } else if (raw_data[3] + 4 <= size) {
    snprintf(buff, 256, "\tData: ");
    hid_debug_event(hdev, buff);
    dump_buff_as_hex(buff, 256, raw_data+4, raw_data[3]);
   } else {
    snprintf(buff, 256, "\tData overflowed\n");
   }
   break;
  case 3:
   snprintf(buff, 256, "\tData address: 0x%02x%02x%02x\n",
     raw_data[3], raw_data[2], raw_data[1]);
   hid_debug_event(hdev, buff);
   snprintf(buff, 256, "\tData length: %d\n", raw_data[4]);
   hid_debug_event(hdev, buff);
   if (raw_data[4] == 0) {
    snprintf(buff, 256, "\tNo data\n");
   } else if (raw_data[4] + 5 <= size) {
    snprintf(buff, 256, "\tData: ");
    hid_debug_event(hdev, buff);
    dump_buff_as_hex(buff, 256, raw_data+5, raw_data[4]);
   } else {
    snprintf(buff, 256, "\tData overflowed\n");
   }
   break;
  default:
   snprintf(buff, 256, "\tNot supported\n");
  }
  hid_debug_event(hdev, buff);
  break;
 case 128:
  snprintf(buff, 256, "report %s (%d, size=%d)\n",
   "REPORT_VERSION", report->id, size-1);
  hid_debug_event(hdev, buff);
  snprintf(buff, 256, "\tFirmware version: %d.%d\n",
    raw_data[2], raw_data[1]);
  hid_debug_event(hdev, buff);
  break;
 case 139:
  snprintf(buff, 256, "report %s (%d, size=%d)\n",
   "REPORT_BL_ERASE_MEMORY", report->id, size-1);
  hid_debug_event(hdev, buff);

  break;
 case 138:
  snprintf(buff, 256, "report %s (%d, size=%d)\n",
   "REPORT_BL_READ_MEMORY", report->id, size-1);
  hid_debug_event(hdev, buff);

  break;
 case 137:
  snprintf(buff, 256, "report %s (%d, size=%d)\n",
   "REPORT_BL_WRITE_MEMORY", report->id, size-1);
  hid_debug_event(hdev, buff);

  break;
 case 136:
  snprintf(buff, 256, "report %s (%d, size=%d)\n",
   "REPORT_DEVID", report->id, size-1);
  hid_debug_event(hdev, buff);
  snprintf(buff, 256, "\tSerial: 0x%02x%02x%02x%02x\n",
    raw_data[1], raw_data[2], raw_data[3], raw_data[4]);
  hid_debug_event(hdev, buff);
  snprintf(buff, 256, "\tType: 0x%02x\n",
    raw_data[5]);
  hid_debug_event(hdev, buff);
  break;
 case 129:
  snprintf(buff, 256, "report %s (%d, size=%d)\n",
   "REPORT_SPLASH_SIZE", report->id, size-1);
  hid_debug_event(hdev, buff);
  snprintf(buff, 256, "\tTotal splash space: %d\n",
    (raw_data[2] << 8) | raw_data[1]);
  hid_debug_event(hdev, buff);
  snprintf(buff, 256, "\tUsed splash space: %d\n",
    (raw_data[4] << 8) | raw_data[3]);
  hid_debug_event(hdev, buff);
  break;
 case 133:
  snprintf(buff, 256, "report %s (%d, size=%d)\n",
   "REPORT_HOOK_VERSION", report->id, size-1);
  hid_debug_event(hdev, buff);
  snprintf(buff, 256, "\tFirmware version: %d.%d\n",
    raw_data[1], raw_data[2]);
  hid_debug_event(hdev, buff);
  break;
 default:
  snprintf(buff, 256, "report %s (%d, size=%d)\n",
   "<unknown>", report->id, size-1);
  hid_debug_event(hdev, buff);
  break;
 }
 wake_up_interruptible(&hdev->debug_wait);
 kfree(buff);
}
