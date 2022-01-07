
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxt_data {int t19_num_keys; scalar_t__* t19_keymap; } ;
struct input_dev {char* name; int propbit; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_X ;
 int ABS_Y ;
 int EV_KEY ;
 int INPUT_PROP_BUTTONPAD ;
 scalar_t__ KEY_RESERVED ;
 int MXT_PIXELS_PER_MM ;
 int __set_bit (int ,int ) ;
 int input_abs_set_res (struct input_dev*,int ,int ) ;
 int input_set_capability (struct input_dev*,int ,scalar_t__) ;

__attribute__((used)) static void mxt_set_up_as_touchpad(struct input_dev *input_dev,
       struct mxt_data *data)
{
 int i;

 input_dev->name = "Atmel maXTouch Touchpad";

 __set_bit(INPUT_PROP_BUTTONPAD, input_dev->propbit);

 input_abs_set_res(input_dev, ABS_X, MXT_PIXELS_PER_MM);
 input_abs_set_res(input_dev, ABS_Y, MXT_PIXELS_PER_MM);
 input_abs_set_res(input_dev, ABS_MT_POSITION_X,
     MXT_PIXELS_PER_MM);
 input_abs_set_res(input_dev, ABS_MT_POSITION_Y,
     MXT_PIXELS_PER_MM);

 for (i = 0; i < data->t19_num_keys; i++)
  if (data->t19_keymap[i] != KEY_RESERVED)
   input_set_capability(input_dev, EV_KEY,
          data->t19_keymap[i]);
}
