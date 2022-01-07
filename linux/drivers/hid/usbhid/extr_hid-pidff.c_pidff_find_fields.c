
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct pidff_usage {int * value; TYPE_2__* field; } ;
struct hid_report {int maxfield; TYPE_2__** field; } ;
struct TYPE_4__ {int maxusage; int report_count; int * value; TYPE_1__* usage; } ;
struct TYPE_3__ {int const hid; } ;


 int const HID_UP_PID ;
 int pr_debug (char*,...) ;

__attribute__((used)) static int pidff_find_fields(struct pidff_usage *usage, const u8 *table,
        struct hid_report *report, int count, int strict)
{
 int i, j, k, found;

 for (k = 0; k < count; k++) {
  found = 0;
  for (i = 0; i < report->maxfield; i++) {
   if (report->field[i]->maxusage !=
       report->field[i]->report_count) {
    pr_debug("maxusage and report_count do not match, skipping\n");
    continue;
   }
   for (j = 0; j < report->field[i]->maxusage; j++) {
    if (report->field[i]->usage[j].hid ==
        (HID_UP_PID | table[k])) {
     pr_debug("found %d at %d->%d\n",
       k, i, j);
     usage[k].field = report->field[i];
     usage[k].value =
      &report->field[i]->value[j];
     found = 1;
     break;
    }
   }
   if (found)
    break;
  }
  if (!found && strict) {
   pr_debug("failed to locate %d\n", k);
   return -1;
  }
 }
 return 0;
}
