
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx9500_data {struct gpio_desc* gpiod_rst; } ;
struct device {int dummy; } ;
struct i2c_client {int irq; struct device dev; } ;
struct gpio_desc {int dummy; } ;


 int GPIOD_IN ;
 int GPIOD_OUT_HIGH ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int acpi_sx9500_gpios ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 int devm_acpi_dev_add_driver_gpios (struct device*,int ) ;
 void* devm_gpiod_get (struct device*,char*,int ) ;
 int gpiod_to_irq (struct gpio_desc*) ;

__attribute__((used)) static void sx9500_gpio_probe(struct i2c_client *client,
         struct sx9500_data *data)
{
 struct gpio_desc *gpiod_int;
 struct device *dev;
 int ret;

 if (!client)
  return;

 dev = &client->dev;

 ret = devm_acpi_dev_add_driver_gpios(dev, acpi_sx9500_gpios);
 if (ret)
  dev_dbg(dev, "Unable to add GPIO mapping table\n");

 if (client->irq <= 0) {
  gpiod_int = devm_gpiod_get(dev, "interrupt", GPIOD_IN);
  if (IS_ERR(gpiod_int))
   dev_err(dev, "gpio get irq failed\n");
  else
   client->irq = gpiod_to_irq(gpiod_int);
 }

 data->gpiod_rst = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
 if (IS_ERR(data->gpiod_rst)) {
  dev_warn(dev, "gpio get reset pin failed\n");
  data->gpiod_rst = ((void*)0);
 }
}
