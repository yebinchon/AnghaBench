
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_touch {int i2c; } ;
struct input_dev {int dummy; } ;


 int MEAS_EN3 ;
 int MEAS_PD_EN ;
 int MEAS_TSIX_EN ;
 int MEAS_TSIY_EN ;
 int MEAS_TSIZ1_EN ;
 int MEAS_TSIZ2_EN ;
 struct pm860x_touch* input_get_drvdata (struct input_dev*) ;
 int pm860x_set_bits (int ,int ,int,int) ;

__attribute__((used)) static int pm860x_touch_open(struct input_dev *dev)
{
 struct pm860x_touch *touch = input_get_drvdata(dev);
 int data, ret;

 data = MEAS_PD_EN | MEAS_TSIX_EN | MEAS_TSIY_EN
  | MEAS_TSIZ1_EN | MEAS_TSIZ2_EN;
 ret = pm860x_set_bits(touch->i2c, MEAS_EN3, data, data);
 if (ret < 0)
  goto out;
 return 0;
out:
 return ret;
}
