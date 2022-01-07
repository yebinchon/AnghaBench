
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int hid; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;


 int EV_KEY ;
 unsigned long GFRM100 ;
 int HID_UP_CONSUMER ;
 int KEY_INFO ;
 int KEY_OK ;
 scalar_t__ hid_get_drvdata (struct hid_device*) ;
 int hid_map_usage_clear (struct hid_input*,struct hid_usage*,unsigned long**,int*,int ,int ) ;

__attribute__((used)) static int gfrm_input_mapping(struct hid_device *hdev, struct hid_input *hi,
  struct hid_field *field, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 unsigned long hdev_type = (unsigned long) hid_get_drvdata(hdev);

 if (hdev_type == GFRM100) {
  if (usage->hid == (HID_UP_CONSUMER | 0x4)) {

   hid_map_usage_clear(hi, usage, bit, max, EV_KEY, KEY_INFO);
   return 1;
  }

  if (usage->hid == (HID_UP_CONSUMER | 0x41)) {

   hid_map_usage_clear(hi, usage, bit, max, EV_KEY, KEY_OK);
   return 1;
  }
 }

 return 0;
}
