
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_report {int id; struct hid_field** field; } ;
struct hid_field {TYPE_1__* hidinput; } ;
struct hid_device {int claimed; } ;
struct TYPE_2__ {scalar_t__ input; } ;


 int HID_CLAIMED_INPUT ;


 int input_sync (scalar_t__) ;

__attribute__((used)) static void rmi_report(struct hid_device *hid, struct hid_report *report)
{
 struct hid_field *field = report->field[0];

 if (!(hid->claimed & HID_CLAIMED_INPUT))
  return;

 switch (report->id) {
 case 128:

 case 129:
  return;
 }

 if (field && field->hidinput && field->hidinput->input)
  input_sync(field->hidinput->input);
}
