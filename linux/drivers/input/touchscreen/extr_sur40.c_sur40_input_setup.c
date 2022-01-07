
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int evbit; } ;


 int ABS_MT_ORIENTATION ;
 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_TOOL_X ;
 int ABS_MT_TOOL_Y ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_TOUCH_MINOR ;
 int EV_ABS ;
 int EV_KEY ;
 int INPUT_MT_DIRECT ;
 int INPUT_MT_DROP_UNUSED ;
 int MAX_CONTACTS ;
 int SENSOR_RES_X ;
 int SENSOR_RES_Y ;
 int __set_bit (int ,int ) ;
 int input_mt_init_slots (struct input_dev*,int ,int) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int ,int ) ;

__attribute__((used)) static void sur40_input_setup(struct input_dev *input_dev)
{
 __set_bit(EV_KEY, input_dev->evbit);
 __set_bit(EV_ABS, input_dev->evbit);

 input_set_abs_params(input_dev, ABS_MT_POSITION_X,
        0, SENSOR_RES_X, 0, 0);
 input_set_abs_params(input_dev, ABS_MT_POSITION_Y,
        0, SENSOR_RES_Y, 0, 0);

 input_set_abs_params(input_dev, ABS_MT_TOOL_X,
        0, SENSOR_RES_X, 0, 0);
 input_set_abs_params(input_dev, ABS_MT_TOOL_Y,
        0, SENSOR_RES_Y, 0, 0);



 input_set_abs_params(input_dev, ABS_MT_TOUCH_MAJOR,
        0, SENSOR_RES_X, 0, 0);
 input_set_abs_params(input_dev, ABS_MT_TOUCH_MINOR,
        0, SENSOR_RES_Y, 0, 0);

 input_set_abs_params(input_dev, ABS_MT_ORIENTATION, 0, 1, 0, 0);

 input_mt_init_slots(input_dev, MAX_CONTACTS,
       INPUT_MT_DIRECT | INPUT_MT_DROP_UNUSED);
}
