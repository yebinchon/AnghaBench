
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct input_dev {int evbit; int keybit; int relbit; TYPE_1__ dev; int id; int phys; int name; } ;
typedef enum hgpk_mode { ____Placeholder_hgpk_mode } hgpk_mode ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_LEFT ;
 int BTN_RIGHT ;
 int BTN_TOOL_FINGER ;
 int BTN_TOUCH ;
 int BUG () ;
 int EV_ABS ;
 int EV_KEY ;
 int EV_REL ;



 int REL_X ;
 int REL_Y ;
 int __set_bit (int ,int ) ;
 int input_abs_set_res (struct input_dev*,int ,int) ;
 int input_set_abs_params (struct input_dev*,int ,int,int,int ,int ) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void hgpk_setup_input_device(struct input_dev *input,
        struct input_dev *old_input,
        enum hgpk_mode mode)
{
 if (old_input) {
  input->name = old_input->name;
  input->phys = old_input->phys;
  input->id = old_input->id;
  input->dev.parent = old_input->dev.parent;
 }

 memset(input->evbit, 0, sizeof(input->evbit));
 memset(input->relbit, 0, sizeof(input->relbit));
 memset(input->keybit, 0, sizeof(input->keybit));


 __set_bit(EV_KEY, input->evbit);
 __set_bit(BTN_LEFT, input->keybit);
 __set_bit(BTN_RIGHT, input->keybit);

 switch (mode) {
 case 129:
  __set_bit(EV_REL, input->evbit);
  __set_bit(REL_X, input->relbit);
  __set_bit(REL_Y, input->relbit);
  break;

 case 130:
  __set_bit(BTN_TOUCH, input->keybit);
  __set_bit(BTN_TOOL_FINGER, input->keybit);

  __set_bit(EV_ABS, input->evbit);


  input_set_abs_params(input, ABS_PRESSURE, 0, 15, 0, 0);


  input_set_abs_params(input, ABS_X, 0, 399, 0, 0);
  input_set_abs_params(input, ABS_Y, 0, 290, 0, 0);


  input_abs_set_res(input, ABS_X, 8);
  input_abs_set_res(input, ABS_Y, 8);
  break;

 case 128:
  __set_bit(BTN_TOUCH, input->keybit);
  __set_bit(BTN_TOOL_FINGER, input->keybit);

  __set_bit(EV_ABS, input->evbit);


  input_set_abs_params(input, ABS_X, 0, 999, 0, 0);
  input_set_abs_params(input, ABS_Y, 5, 239, 0, 0);


  input_abs_set_res(input, ABS_X, 6);
  input_abs_set_res(input, ABS_Y, 8);
  break;

 default:
  BUG();
 }
}
