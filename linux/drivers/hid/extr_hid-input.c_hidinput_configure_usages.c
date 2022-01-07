
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_report {int maxfield; TYPE_1__** field; } ;
struct hid_input {int dummy; } ;
struct TYPE_2__ {int maxusage; scalar_t__ usage; } ;


 int hidinput_configure_usage (struct hid_input*,TYPE_1__*,scalar_t__) ;

__attribute__((used)) static inline void hidinput_configure_usages(struct hid_input *hidinput,
          struct hid_report *report)
{
 int i, j;

 for (i = 0; i < report->maxfield; i++)
  for (j = 0; j < report->field[i]->maxusage; j++)
   hidinput_configure_usage(hidinput, report->field[i],
       report->field[i]->usage + j);
}
