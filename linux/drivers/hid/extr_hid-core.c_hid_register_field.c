
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int dummy; } ;
struct hid_report {scalar_t__ maxfield; struct hid_field** field; int device; } ;
struct hid_field {size_t index; struct hid_report* report; struct hid_usage* usage; int * value; } ;
typedef int s32 ;


 int GFP_KERNEL ;
 scalar_t__ HID_MAX_FIELDS ;
 int hid_err (int ,char*) ;
 struct hid_field* kzalloc (int,int ) ;

__attribute__((used)) static struct hid_field *hid_register_field(struct hid_report *report, unsigned usages, unsigned values)
{
 struct hid_field *field;

 if (report->maxfield == HID_MAX_FIELDS) {
  hid_err(report->device, "too many fields in report\n");
  return ((void*)0);
 }

 field = kzalloc((sizeof(struct hid_field) +
    usages * sizeof(struct hid_usage) +
    values * sizeof(unsigned)), GFP_KERNEL);
 if (!field)
  return ((void*)0);

 field->index = report->maxfield++;
 report->field[field->index] = field;
 field->usage = (struct hid_usage *)(field + 1);
 field->value = (s32 *)(field->usage + usages);
 field->report = report;

 return field;
}
