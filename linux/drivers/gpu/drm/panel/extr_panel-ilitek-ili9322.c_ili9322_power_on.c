
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ili9322 {int reset_gpio; int dev; int supplies; } ;


 int ARRAY_SIZE (int ) ;
 int dev_err (int ,char*) ;
 int gpiod_set_value (int ,int) ;
 int msleep (int) ;
 int regulator_bulk_enable (int ,int ) ;

__attribute__((used)) static int ili9322_power_on(struct ili9322 *ili)
{
 int ret;


 gpiod_set_value(ili->reset_gpio, 1);

 ret = regulator_bulk_enable(ARRAY_SIZE(ili->supplies), ili->supplies);
 if (ret < 0) {
  dev_err(ili->dev, "unable to enable regulators\n");
  return ret;
 }
 msleep(20);


 gpiod_set_value(ili->reset_gpio, 0);

 msleep(10);

 return 0;
}
