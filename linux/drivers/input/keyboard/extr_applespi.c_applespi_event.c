
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int led; } ;
struct applespi_data {int dummy; } ;


 int EINVAL ;

 int LED_CAPSL ;
 int applespi_set_capsl_led (struct applespi_data*,int) ;
 struct applespi_data* input_get_drvdata (struct input_dev*) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int applespi_event(struct input_dev *dev, unsigned int type,
     unsigned int code, int value)
{
 struct applespi_data *applespi = input_get_drvdata(dev);

 switch (type) {
 case 128:
  applespi_set_capsl_led(applespi, !!test_bit(LED_CAPSL, dev->led));
  return 0;
 }

 return -EINVAL;
}
