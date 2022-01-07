
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int keybit; } ;
struct alps_data {int dummy; } ;


 int BTN_TOOL_QUINTTAP ;
 int INPUT_MT_DROP_UNUSED ;
 int INPUT_MT_POINTER ;
 int INPUT_MT_TRACK ;
 int MAX_TOUCHES ;
 int alps_set_abs_params_mt_common (struct alps_data*,struct input_dev*) ;
 int input_mt_init_slots (struct input_dev*,int ,int) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static void alps_set_abs_params_v7(struct alps_data *priv,
       struct input_dev *dev1)
{
 alps_set_abs_params_mt_common(priv, dev1);
 set_bit(BTN_TOOL_QUINTTAP, dev1->keybit);

 input_mt_init_slots(dev1, MAX_TOUCHES,
       INPUT_MT_POINTER | INPUT_MT_DROP_UNUSED |
    INPUT_MT_TRACK);

 set_bit(BTN_TOOL_QUINTTAP, dev1->keybit);
}
