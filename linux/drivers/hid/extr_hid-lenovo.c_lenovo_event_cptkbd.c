
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lenovo_drvdata_cptkbd {int middlebutton_state; } ;
struct hid_usage {scalar_t__ type; scalar_t__ code; } ;
struct hid_field {TYPE_1__* hidinput; } ;
struct hid_device {int dummy; } ;
typedef int __s32 ;
struct TYPE_2__ {int input; } ;


 scalar_t__ BTN_MIDDLE ;
 scalar_t__ EV_KEY ;
 scalar_t__ EV_REL ;
 scalar_t__ REL_HWHEEL ;
 scalar_t__ REL_WHEEL ;
 struct lenovo_drvdata_cptkbd* hid_get_drvdata (struct hid_device*) ;
 int input_event (int ,scalar_t__,scalar_t__,int) ;
 int input_sync (int ) ;

__attribute__((used)) static int lenovo_event_cptkbd(struct hid_device *hdev,
  struct hid_field *field, struct hid_usage *usage, __s32 value)
{
 struct lenovo_drvdata_cptkbd *cptkbd_data = hid_get_drvdata(hdev);


 if (usage->type == EV_REL && (usage->code == REL_WHEEL ||
   usage->code == REL_HWHEEL)) {

  cptkbd_data->middlebutton_state = 2;
  return 0;
 }


 if (usage->type == EV_KEY && usage->code == BTN_MIDDLE) {
  if (value == 1) {
   cptkbd_data->middlebutton_state = 1;
  } else if (value == 0) {
   if (cptkbd_data->middlebutton_state == 1) {

    input_event(field->hidinput->input,
     EV_KEY, BTN_MIDDLE, 1);
    input_sync(field->hidinput->input);
    input_event(field->hidinput->input,
     EV_KEY, BTN_MIDDLE, 0);
    input_sync(field->hidinput->input);
   }
   cptkbd_data->middlebutton_state = 0;
  }
  return 1;
 }

 return 0;
}
