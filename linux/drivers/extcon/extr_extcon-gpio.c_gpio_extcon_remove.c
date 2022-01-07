
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct gpio_extcon_data {int work; } ;


 int cancel_delayed_work_sync (int *) ;
 struct gpio_extcon_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int gpio_extcon_remove(struct platform_device *pdev)
{
 struct gpio_extcon_data *data = platform_get_drvdata(pdev);

 cancel_delayed_work_sync(&data->work);

 return 0;
}
