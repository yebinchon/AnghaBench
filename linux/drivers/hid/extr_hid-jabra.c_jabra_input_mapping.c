
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int hid; int usage_index; int collection_index; } ;
struct hid_input {int dummy; } ;
struct hid_field {int application; } ;
struct hid_device {int dummy; } ;


 int HID_UP_VENDOR_DEFINED_MAX ;
 int HID_UP_VENDOR_DEFINED_MIN ;
 int HID_USAGE_PAGE ;
 int dbg_hid (char*,int,int ,int ,int ,char*) ;

__attribute__((used)) static int jabra_input_mapping(struct hid_device *hdev,
          struct hid_input *hi,
          struct hid_field *field,
          struct hid_usage *usage,
          unsigned long **bit, int *max)
{
 int is_vendor_defined =
  ((usage->hid & HID_USAGE_PAGE) >= HID_UP_VENDOR_DEFINED_MIN &&
   (usage->hid & HID_USAGE_PAGE) <= HID_UP_VENDOR_DEFINED_MAX);

 dbg_hid("hid=0x%08x appl=0x%08x coll_idx=0x%02x usage_idx=0x%02x: %s\n",
  usage->hid,
  field->application,
  usage->collection_index,
  usage->usage_index,
  is_vendor_defined ? "ignored" : "defaulted");


 return is_vendor_defined ? -1 : 0;
}
