
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2_gpio_data {int serio; } ;
struct platform_device {int dummy; } ;


 struct ps2_gpio_data* platform_get_drvdata (struct platform_device*) ;
 int serio_unregister_port (int ) ;

__attribute__((used)) static int ps2_gpio_remove(struct platform_device *pdev)
{
 struct ps2_gpio_data *drvdata = platform_get_drvdata(pdev);

 serio_unregister_port(drvdata->serio);
 return 0;
}
