
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int hid; } ;
struct hid_device {int debug_wait; } ;
typedef int __s32 ;


 int HID_DEBUG_BUFSIZE ;
 int hid_debug_event (struct hid_device*,char*) ;
 char* hid_resolv_usage (int ,int *) ;
 int kfree (char*) ;
 int snprintf (char*,int,char*,int) ;
 int strlen (char*) ;
 int wake_up_interruptible (int *) ;

void hid_dump_input(struct hid_device *hdev, struct hid_usage *usage, __s32 value)
{
 char *buf;
 int len;

 buf = hid_resolv_usage(usage->hid, ((void*)0));
 if (!buf)
  return;
 len = strlen(buf);
 snprintf(buf + len, HID_DEBUG_BUFSIZE - len - 1, " = %d\n", value);

 hid_debug_event(hdev, buf);

 kfree(buf);
 wake_up_interruptible(&hdev->debug_wait);
}
