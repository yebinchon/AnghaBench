
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max732x_platform_data {int gpio_base; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 struct max732x_platform_data* devm_kzalloc (struct device*,int,int ) ;

__attribute__((used)) static struct max732x_platform_data *of_gpio_max732x(struct device *dev)
{
 struct max732x_platform_data *pdata;

 pdata = devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  return ((void*)0);

 pdata->gpio_base = -1;

 return pdata;
}
