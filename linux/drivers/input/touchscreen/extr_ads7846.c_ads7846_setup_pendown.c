
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct ads7846_platform_data {scalar_t__ gpio_pendown_debounce; int gpio_pendown; scalar_t__ get_pendown_state; } ;
struct ads7846 {int gpio_pendown; scalar_t__ get_pendown_state; } ;


 int EINVAL ;
 int GPIOF_IN ;
 int dev_err (int *,char*,...) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_request_one (int ,int ,char*) ;
 int gpio_set_debounce (int ,scalar_t__) ;

__attribute__((used)) static int ads7846_setup_pendown(struct spi_device *spi,
     struct ads7846 *ts,
     const struct ads7846_platform_data *pdata)
{
 int err;







 if (pdata->get_pendown_state) {
  ts->get_pendown_state = pdata->get_pendown_state;
 } else if (gpio_is_valid(pdata->gpio_pendown)) {

  err = gpio_request_one(pdata->gpio_pendown, GPIOF_IN,
           "ads7846_pendown");
  if (err) {
   dev_err(&spi->dev,
    "failed to request/setup pendown GPIO%d: %d\n",
    pdata->gpio_pendown, err);
   return err;
  }

  ts->gpio_pendown = pdata->gpio_pendown;

  if (pdata->gpio_pendown_debounce)
   gpio_set_debounce(pdata->gpio_pendown,
       pdata->gpio_pendown_debounce);
 } else {
  dev_err(&spi->dev, "no get_pendown_state nor gpio_pendown?\n");
  return -EINVAL;
 }

 return 0;
}
