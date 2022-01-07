
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_report {int maxfield; struct hid_field** field; } ;
struct hid_field {unsigned int report_count; int flags; int * value; TYPE_1__* usage; } ;
struct hid_device {int dummy; } ;
struct TYPE_2__ {int collection_index; } ;


 int HID_MAIN_ITEM_VARIABLE ;
 int wacom_wac_event (struct hid_device*,struct hid_field*,TYPE_1__*,int ) ;

__attribute__((used)) static void wacom_report_events(struct hid_device *hdev,
    struct hid_report *report, int collection_index,
    int field_index)
{
 int r;

 for (r = field_index; r < report->maxfield; r++) {
  struct hid_field *field;
  unsigned count, n;

  field = report->field[r];
  count = field->report_count;

  if (!(HID_MAIN_ITEM_VARIABLE & field->flags))
   continue;

  for (n = 0 ; n < count; n++) {
   if (field->usage[n].collection_index == collection_index)
    wacom_wac_event(hdev, field, &field->usage[n],
      field->value[n]);
   else
    return;
  }
 }
}
