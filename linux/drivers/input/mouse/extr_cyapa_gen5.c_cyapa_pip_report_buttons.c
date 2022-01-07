
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct input_dev {int dummy; } ;
struct cyapa_pip_report_data {int* report_head; } ;
struct cyapa {int btn_capability; struct input_dev* input; } ;


 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int CAPABILITY_BTN_MASK ;
 int CAPABILITY_BTN_SHIFT ;
 int CAPABILITY_LEFT_BTN_MASK ;
 int CAPABILITY_MIDDLE_BTN_MASK ;
 int CAPABILITY_RIGHT_BTN_MASK ;
 size_t PIP_BUTTONS_OFFSET ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void cyapa_pip_report_buttons(struct cyapa *cyapa,
  const struct cyapa_pip_report_data *report_data)
{
 struct input_dev *input = cyapa->input;
 u8 buttons = report_data->report_head[PIP_BUTTONS_OFFSET];

 buttons = (buttons << CAPABILITY_BTN_SHIFT) & CAPABILITY_BTN_MASK;

 if (cyapa->btn_capability & CAPABILITY_LEFT_BTN_MASK) {
  input_report_key(input, BTN_LEFT,
   !!(buttons & CAPABILITY_LEFT_BTN_MASK));
 }
 if (cyapa->btn_capability & CAPABILITY_MIDDLE_BTN_MASK) {
  input_report_key(input, BTN_MIDDLE,
   !!(buttons & CAPABILITY_MIDDLE_BTN_MASK));
 }
 if (cyapa->btn_capability & CAPABILITY_RIGHT_BTN_MASK) {
  input_report_key(input, BTN_RIGHT,
   !!(buttons & CAPABILITY_RIGHT_BTN_MASK));
 }

 input_sync(input);
}
