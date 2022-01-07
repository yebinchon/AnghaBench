
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_usage {scalar_t__ hid; } ;
struct hid_report {int maxfield; TYPE_1__** field; } ;
struct hid_device {int dummy; } ;
typedef int __s32 ;
struct TYPE_2__ {int report_count; int maxusage; int * value; struct hid_usage* usage; int logical_minimum; int logical_maximum; } ;


 scalar_t__ HID_GD_RESOLUTION_MULTIPLIER ;
 int HID_REQ_GET_REPORT ;
 int hid_hw_request (struct hid_device*,struct hid_report*,int ) ;
 int hid_hw_wait (struct hid_device*) ;

__attribute__((used)) static bool __hidinput_change_resolution_multipliers(struct hid_device *hid,
  struct hid_report *report, bool use_logical_max)
{
 struct hid_usage *usage;
 bool update_needed = 0;
 int i, j;

 if (report->maxfield == 0)
  return 0;






 if (report->maxfield > 1) {
  hid_hw_request(hid, report, HID_REQ_GET_REPORT);
  hid_hw_wait(hid);
 }

 for (i = 0; i < report->maxfield; i++) {
  __s32 value = use_logical_max ?
         report->field[i]->logical_maximum :
         report->field[i]->logical_minimum;





  if (report->field[i]->report_count != 1)
   continue;

  for (j = 0; j < report->field[i]->maxusage; j++) {
   usage = &report->field[i]->usage[j];

   if (usage->hid != HID_GD_RESOLUTION_MULTIPLIER)
    continue;

   report->field[i]->value[j] = value;
   update_needed = 1;
  }
 }

 return update_needed;
}
