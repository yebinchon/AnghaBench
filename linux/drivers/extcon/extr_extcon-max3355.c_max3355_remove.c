
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct max3355_data {int shdn_gpiod; } ;


 int gpiod_set_value_cansleep (int ,int ) ;
 struct max3355_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int max3355_remove(struct platform_device *pdev)
{
 struct max3355_data *data = platform_get_drvdata(pdev);

 gpiod_set_value_cansleep(data->shdn_gpiod, 0);

 return 0;
}
