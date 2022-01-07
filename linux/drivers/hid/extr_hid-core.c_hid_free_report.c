
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_report {unsigned int maxfield; struct hid_report** field; } ;


 int kfree (struct hid_report*) ;

__attribute__((used)) static void hid_free_report(struct hid_report *report)
{
 unsigned n;

 for (n = 0; n < report->maxfield; n++)
  kfree(report->field[n]);
 kfree(report);
}
