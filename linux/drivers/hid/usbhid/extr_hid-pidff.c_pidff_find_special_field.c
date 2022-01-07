
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_report {int maxfield; struct hid_field** field; } ;
struct hid_field {int logical; scalar_t__ report_count; int logical_minimum; } ;


 int HID_UP_PID ;
 int pr_err (char*) ;

__attribute__((used)) static struct hid_field *pidff_find_special_field(struct hid_report *report,
        int usage, int enforce_min)
{
 int i;

 for (i = 0; i < report->maxfield; i++) {
  if (report->field[i]->logical == (HID_UP_PID | usage) &&
      report->field[i]->report_count > 0) {
   if (!enforce_min ||
       report->field[i]->logical_minimum == 1)
    return report->field[i];
   else {
    pr_err("logical_minimum is not 1 as it should be\n");
    return ((void*)0);
   }
  }
 }
 return ((void*)0);
}
