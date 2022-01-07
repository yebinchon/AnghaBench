
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int claimed; int (* hiddev_hid_event ) (struct hid_device*,struct hid_field*,struct hid_usage*,int ) ;} ;
typedef int __s32 ;


 int HID_CLAIMED_HIDDEV ;
 int stub1 (struct hid_device*,struct hid_field*,struct hid_usage*,int ) ;

__attribute__((used)) static int mt_touch_event(struct hid_device *hid, struct hid_field *field,
    struct hid_usage *usage, __s32 value)
{

 if (hid->claimed & HID_CLAIMED_HIDDEV && hid->hiddev_hid_event)
  hid->hiddev_hid_event(hid, field, usage, value);

 return 1;
}
