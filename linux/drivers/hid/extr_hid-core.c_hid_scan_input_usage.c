
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hid_parser {struct hid_device* device; } ;
struct hid_device {int group; } ;


 scalar_t__ HID_DG_CONTACTID ;
 int HID_GROUP_MULTITOUCH ;

__attribute__((used)) static void hid_scan_input_usage(struct hid_parser *parser, u32 usage)
{
 struct hid_device *hid = parser->device;

 if (usage == HID_DG_CONTACTID)
  hid->group = HID_GROUP_MULTITOUCH;
}
