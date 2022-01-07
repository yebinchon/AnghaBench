
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int keybit; int evbit; int relbit; int propbit; } ;
struct cytp_data {int tp_max_abs_x; int tp_max_abs_y; int tp_max_pressure; int tp_res_y; int tp_res_x; int tp_min_pressure; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ABS_PRESSURE ;
 int ABS_TOOL_WIDTH ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int BTN_TOOL_DOUBLETAP ;
 int BTN_TOOL_FINGER ;
 int BTN_TOOL_QUADTAP ;
 int BTN_TOOL_QUINTTAP ;
 int BTN_TOOL_TRIPLETAP ;
 int BTN_TOUCH ;
 int CYTP_MAX_MT_SLOTS ;
 int EINVAL ;
 int EV_ABS ;
 int EV_KEY ;
 int EV_REL ;
 int INPUT_MT_DROP_UNUSED ;
 int INPUT_MT_TRACK ;
 int INPUT_PROP_SEMI_MT ;
 int REL_X ;
 int REL_Y ;
 int __clear_bit (int ,int ) ;
 int __set_bit (int ,int ) ;
 int input_abs_set_res (struct input_dev*,int ,int ) ;
 int input_mt_init_slots (struct input_dev*,int ,int) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int ,int ) ;

__attribute__((used)) static int cypress_set_input_params(struct input_dev *input,
        struct cytp_data *cytp)
{
 int ret;

 if (!cytp->tp_res_x || !cytp->tp_res_y)
  return -EINVAL;

 __set_bit(EV_ABS, input->evbit);
 input_set_abs_params(input, ABS_X, 0, cytp->tp_max_abs_x, 0, 0);
 input_set_abs_params(input, ABS_Y, 0, cytp->tp_max_abs_y, 0, 0);
 input_set_abs_params(input, ABS_PRESSURE,
        cytp->tp_min_pressure, cytp->tp_max_pressure, 0, 0);
 input_set_abs_params(input, ABS_TOOL_WIDTH, 0, 255, 0, 0);


 input_set_abs_params(input, ABS_MT_POSITION_X, 0, cytp->tp_max_abs_x, 0, 0);
 input_set_abs_params(input, ABS_MT_POSITION_Y, 0, cytp->tp_max_abs_y, 0, 0);
 input_set_abs_params(input, ABS_MT_PRESSURE, 0, 255, 0, 0);

 ret = input_mt_init_slots(input, CYTP_MAX_MT_SLOTS,
   INPUT_MT_DROP_UNUSED|INPUT_MT_TRACK);
 if (ret < 0)
  return ret;

 __set_bit(INPUT_PROP_SEMI_MT, input->propbit);

 input_abs_set_res(input, ABS_X, cytp->tp_res_x);
 input_abs_set_res(input, ABS_Y, cytp->tp_res_y);

 input_abs_set_res(input, ABS_MT_POSITION_X, cytp->tp_res_x);
 input_abs_set_res(input, ABS_MT_POSITION_Y, cytp->tp_res_y);

 __set_bit(BTN_TOUCH, input->keybit);
 __set_bit(BTN_TOOL_FINGER, input->keybit);
 __set_bit(BTN_TOOL_DOUBLETAP, input->keybit);
 __set_bit(BTN_TOOL_TRIPLETAP, input->keybit);
 __set_bit(BTN_TOOL_QUADTAP, input->keybit);
 __set_bit(BTN_TOOL_QUINTTAP, input->keybit);

 __clear_bit(EV_REL, input->evbit);
 __clear_bit(REL_X, input->relbit);
 __clear_bit(REL_Y, input->relbit);

 __set_bit(EV_KEY, input->evbit);
 __set_bit(BTN_LEFT, input->keybit);
 __set_bit(BTN_RIGHT, input->keybit);
 __set_bit(BTN_MIDDLE, input->keybit);

 return 0;
}
