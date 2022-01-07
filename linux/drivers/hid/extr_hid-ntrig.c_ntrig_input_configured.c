
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct input_dev {char* name; int keybit; } ;
struct hid_input {TYPE_2__* report; struct input_dev* input; } ;
struct hid_device {int dummy; } ;
struct TYPE_4__ {int maxfield; TYPE_1__** field; } ;
struct TYPE_3__ {int application; int physical; } ;


 int BTN_0 ;
 int BTN_TOOL_DOUBLETAP ;
 int BTN_TOOL_FINGER ;
 int BTN_TOOL_PEN ;


 int __clear_bit (int ,int ) ;
 int __set_bit (int ,int ) ;

__attribute__((used)) static int ntrig_input_configured(struct hid_device *hid,
  struct hid_input *hidinput)

{
 struct input_dev *input = hidinput->input;

 if (hidinput->report->maxfield < 1)
  return 0;

 switch (hidinput->report->field[0]->application) {
 case 129:
  input->name = "N-Trig Pen";
  break;
 case 128:


  __clear_bit(BTN_TOOL_PEN, input->keybit);
  __clear_bit(BTN_TOOL_FINGER, input->keybit);
  __clear_bit(BTN_0, input->keybit);
  __set_bit(BTN_TOOL_DOUBLETAP, input->keybit);






  input->name = (hidinput->report->field[0]->physical) ?
       "N-Trig Touchscreen" :
       "N-Trig MultiTouch";
  break;
 }

 return 0;
}
