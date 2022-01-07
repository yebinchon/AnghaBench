
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int propbit; int keybit; int evbit; } ;
struct bcm5974_config {int caps; int y; int x; int o; int w; } ;


 int ABS_MT_ORIENTATION ;
 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_TOUCH_MINOR ;
 int ABS_MT_WIDTH_MAJOR ;
 int ABS_MT_WIDTH_MINOR ;
 int ABS_PRESSURE ;
 int ABS_TOOL_WIDTH ;
 int BTN_LEFT ;
 int EV_ABS ;
 int EV_KEY ;
 int HAS_INTEGRATED_BUTTON ;
 int INPUT_MT_DROP_UNUSED ;
 int INPUT_MT_POINTER ;
 int INPUT_MT_TRACK ;
 int INPUT_PROP_BUTTONPAD ;
 int MAX_FINGERS ;
 int __set_bit (int ,int ) ;
 int input_mt_init_slots (struct input_dev*,int ,int) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int,int ) ;
 int set_abs (struct input_dev*,int ,int *) ;

__attribute__((used)) static void setup_events_to_report(struct input_dev *input_dev,
       const struct bcm5974_config *cfg)
{
 __set_bit(EV_ABS, input_dev->evbit);


 input_set_abs_params(input_dev, ABS_PRESSURE, 0, 256, 5, 0);
 input_set_abs_params(input_dev, ABS_TOOL_WIDTH, 0, 16, 0, 0);


 set_abs(input_dev, ABS_MT_TOUCH_MAJOR, &cfg->w);
 set_abs(input_dev, ABS_MT_TOUCH_MINOR, &cfg->w);

 set_abs(input_dev, ABS_MT_WIDTH_MAJOR, &cfg->w);
 set_abs(input_dev, ABS_MT_WIDTH_MINOR, &cfg->w);

 set_abs(input_dev, ABS_MT_ORIENTATION, &cfg->o);

 set_abs(input_dev, ABS_MT_POSITION_X, &cfg->x);
 set_abs(input_dev, ABS_MT_POSITION_Y, &cfg->y);

 __set_bit(EV_KEY, input_dev->evbit);
 __set_bit(BTN_LEFT, input_dev->keybit);

 if (cfg->caps & HAS_INTEGRATED_BUTTON)
  __set_bit(INPUT_PROP_BUTTONPAD, input_dev->propbit);

 input_mt_init_slots(input_dev, MAX_FINGERS,
  INPUT_MT_POINTER | INPUT_MT_DROP_UNUSED | INPUT_MT_TRACK);
}
