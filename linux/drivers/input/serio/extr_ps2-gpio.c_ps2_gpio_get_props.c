
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2_gpio_data {int write_enable; void* gpio_clk; void* gpio_data; } ;
struct device {int dummy; } ;


 int GPIOD_IN ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (struct device*,char*,int) ;
 int device_property_read_bool (struct device*,char*) ;
 void* devm_gpiod_get (struct device*,char*,int ) ;

__attribute__((used)) static int ps2_gpio_get_props(struct device *dev,
     struct ps2_gpio_data *drvdata)
{
 drvdata->gpio_data = devm_gpiod_get(dev, "data", GPIOD_IN);
 if (IS_ERR(drvdata->gpio_data)) {
  dev_err(dev, "failed to request data gpio: %ld",
   PTR_ERR(drvdata->gpio_data));
  return PTR_ERR(drvdata->gpio_data);
 }

 drvdata->gpio_clk = devm_gpiod_get(dev, "clk", GPIOD_IN);
 if (IS_ERR(drvdata->gpio_clk)) {
  dev_err(dev, "failed to request clock gpio: %ld",
   PTR_ERR(drvdata->gpio_clk));
  return PTR_ERR(drvdata->gpio_clk);
 }

 drvdata->write_enable = device_property_read_bool(dev,
    "write-enable");

 return 0;
}
