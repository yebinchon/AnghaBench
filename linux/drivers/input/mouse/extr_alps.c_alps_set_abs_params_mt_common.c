
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int keybit; } ;
struct alps_data {int y_res; int x_res; int y_max; int x_max; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int BTN_TOOL_QUADTAP ;
 int BTN_TOOL_TRIPLETAP ;
 int input_abs_set_res (struct input_dev*,int ,int ) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int ,int ,int ) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static void alps_set_abs_params_mt_common(struct alps_data *priv,
       struct input_dev *dev1)
{
 input_set_abs_params(dev1, ABS_MT_POSITION_X, 0, priv->x_max, 0, 0);
 input_set_abs_params(dev1, ABS_MT_POSITION_Y, 0, priv->y_max, 0, 0);

 input_abs_set_res(dev1, ABS_MT_POSITION_X, priv->x_res);
 input_abs_set_res(dev1, ABS_MT_POSITION_Y, priv->y_res);

 set_bit(BTN_TOOL_TRIPLETAP, dev1->keybit);
 set_bit(BTN_TOOL_QUADTAP, dev1->keybit);
}
