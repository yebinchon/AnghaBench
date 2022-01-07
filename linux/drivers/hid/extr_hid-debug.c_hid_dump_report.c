
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hid_report_enum {scalar_t__ numbered; } ;
struct hid_device {struct hid_report_enum* report_enum; } ;


 int GFP_ATOMIC ;
 scalar_t__ HID_DEBUG_BUFSIZE ;
 int hid_debug_event (struct hid_device*,char*) ;
 int kfree (char*) ;
 char* kmalloc (scalar_t__,int ) ;
 int snprintf (char*,scalar_t__,char*,int,...) ;

void hid_dump_report(struct hid_device *hid, int type, u8 *data,
  int size)
{
 struct hid_report_enum *report_enum;
 char *buf;
 unsigned int i;

 buf = kmalloc(HID_DEBUG_BUFSIZE, GFP_ATOMIC);

 if (!buf)
  return;

 report_enum = hid->report_enum + type;


 snprintf(buf, HID_DEBUG_BUFSIZE - 1,
   "\nreport (size %u) (%snumbered) = ", size,
   report_enum->numbered ? "" : "un");
 hid_debug_event(hid, buf);

 for (i = 0; i < size; i++) {
  snprintf(buf, HID_DEBUG_BUFSIZE - 1,
    " %02x", data[i]);
  hid_debug_event(hid, buf);
 }
 hid_debug_event(hid, "\n");
 kfree(buf);
}
