
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_desc {int dummy; } ;
struct goodix_ts_data {struct gpio_desc* gpiod_rst; struct gpio_desc* gpiod_int; struct gpio_desc* vddio; struct gpio_desc* avdd28; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int EINVAL ;
 int EPROBE_DEFER ;
 int GOODIX_GPIO_INT_NAME ;
 int GOODIX_GPIO_RST_NAME ;
 int GPIOD_IN ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int dev_dbg (struct device*,char*,int ,int) ;
 int dev_err (struct device*,char*,int) ;
 struct gpio_desc* devm_gpiod_get_optional (struct device*,int ,int ) ;
 void* devm_regulator_get (struct device*,char*) ;

__attribute__((used)) static int goodix_get_gpio_config(struct goodix_ts_data *ts)
{
 int error;
 struct device *dev;
 struct gpio_desc *gpiod;

 if (!ts->client)
  return -EINVAL;
 dev = &ts->client->dev;

 ts->avdd28 = devm_regulator_get(dev, "AVDD28");
 if (IS_ERR(ts->avdd28)) {
  error = PTR_ERR(ts->avdd28);
  if (error != -EPROBE_DEFER)
   dev_err(dev,
    "Failed to get AVDD28 regulator: %d\n", error);
  return error;
 }

 ts->vddio = devm_regulator_get(dev, "VDDIO");
 if (IS_ERR(ts->vddio)) {
  error = PTR_ERR(ts->vddio);
  if (error != -EPROBE_DEFER)
   dev_err(dev,
    "Failed to get VDDIO regulator: %d\n", error);
  return error;
 }


 gpiod = devm_gpiod_get_optional(dev, GOODIX_GPIO_INT_NAME, GPIOD_IN);
 if (IS_ERR(gpiod)) {
  error = PTR_ERR(gpiod);
  if (error != -EPROBE_DEFER)
   dev_dbg(dev, "Failed to get %s GPIO: %d\n",
    GOODIX_GPIO_INT_NAME, error);
  return error;
 }

 ts->gpiod_int = gpiod;


 gpiod = devm_gpiod_get_optional(dev, GOODIX_GPIO_RST_NAME, GPIOD_IN);
 if (IS_ERR(gpiod)) {
  error = PTR_ERR(gpiod);
  if (error != -EPROBE_DEFER)
   dev_dbg(dev, "Failed to get %s GPIO: %d\n",
    GOODIX_GPIO_RST_NAME, error);
  return error;
 }

 ts->gpiod_rst = gpiod;

 return 0;
}
