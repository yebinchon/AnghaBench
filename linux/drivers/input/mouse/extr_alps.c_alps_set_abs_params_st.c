
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct alps_data {int x_max; int y_max; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int input_set_abs_params (struct input_dev*,int ,int ,int,int ,int ) ;

__attribute__((used)) static void alps_set_abs_params_st(struct alps_data *priv,
       struct input_dev *dev1)
{
 input_set_abs_params(dev1, ABS_X, 0, priv->x_max, 0, 0);
 input_set_abs_params(dev1, ABS_Y, 0, priv->y_max, 0, 0);
 input_set_abs_params(dev1, ABS_PRESSURE, 0, 127, 0, 0);
}
