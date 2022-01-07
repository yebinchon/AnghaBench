
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_data {unsigned int last_slot_field; } ;
struct wacom_wac {int is_invalid_bt_frame; struct hid_data hid_data; } ;
struct wacom {struct wacom_wac wacom_wac; } ;
struct hid_usage {int hid; } ;
struct hid_report {int maxfield; struct hid_field** field; } ;
struct hid_field {int maxusage; struct hid_usage* usage; } ;
struct hid_device {int dummy; } ;
 struct wacom* hid_get_drvdata (struct hid_device*) ;
 unsigned int wacom_equivalent_usage (int ) ;

__attribute__((used)) static void wacom_wac_finger_pre_report(struct hid_device *hdev,
  struct hid_report *report)
{
 struct wacom *wacom = hid_get_drvdata(hdev);
 struct wacom_wac *wacom_wac = &wacom->wacom_wac;
 struct hid_data* hid_data = &wacom_wac->hid_data;
 int i;

 wacom_wac->is_invalid_bt_frame = 0;

 for (i = 0; i < report->maxfield; i++) {
  struct hid_field *field = report->field[i];
  int j;

  for (j = 0; j < field->maxusage; j++) {
   struct hid_usage *usage = &field->usage[j];
   unsigned int equivalent_usage =
    wacom_equivalent_usage(usage->hid);

   switch (equivalent_usage) {
   case 129:
   case 128:
   case 130:
   case 134:
   case 135:
   case 133:
   case 132:
   case 131:
    hid_data->last_slot_field = equivalent_usage;
    break;
   }
  }
 }
}
