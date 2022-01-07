
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {unsigned int hid; } ;


 unsigned int HID_USAGE ;
 unsigned int HID_USAGE_PAGE ;

__attribute__((used)) static bool match_scancode(struct hid_usage *usage,
      unsigned int cur_idx, unsigned int scancode)
{
 return (usage->hid & (HID_USAGE_PAGE | HID_USAGE)) == scancode;
}
