
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_report {scalar_t__ id; int size; unsigned int maxfield; int * field; int device; } ;
typedef int __u8 ;


 int hid_output_field (int ,int ,int *) ;
 int memset (int *,int ,int) ;

void hid_output_report(struct hid_report *report, __u8 *data)
{
 unsigned n;

 if (report->id > 0)
  *data++ = report->id;

 memset(data, 0, ((report->size - 1) >> 3) + 1);
 for (n = 0; n < report->maxfield; n++)
  hid_output_field(report->device, report->field[n], data);
}
