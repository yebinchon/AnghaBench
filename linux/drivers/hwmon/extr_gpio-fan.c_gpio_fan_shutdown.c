
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct gpio_fan_data {scalar_t__ gpios; } ;


 struct gpio_fan_data* platform_get_drvdata (struct platform_device*) ;
 int set_fan_speed (struct gpio_fan_data*,int ) ;

__attribute__((used)) static void gpio_fan_shutdown(struct platform_device *pdev)
{
 struct gpio_fan_data *fan_data = platform_get_drvdata(pdev);

 if (fan_data->gpios)
  set_fan_speed(fan_data, 0);
}
