
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_desc {int dummy; } ;
struct ad5272_data {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int AD5272_RESET ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int ad5272_write (struct ad5272_data*,int ,int ) ;
 struct gpio_desc* devm_gpiod_get_optional (int *,char*,int ) ;
 int gpiod_set_value (struct gpio_desc*,int) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ad5272_reset(struct ad5272_data *data)
{
 struct gpio_desc *reset_gpio;

 reset_gpio = devm_gpiod_get_optional(&data->client->dev, "reset",
  GPIOD_OUT_LOW);
 if (IS_ERR(reset_gpio))
  return PTR_ERR(reset_gpio);

 if (reset_gpio) {
  udelay(1);
  gpiod_set_value(reset_gpio, 1);
 } else {
  ad5272_write(data, AD5272_RESET, 0);
 }
 usleep_range(1000, 2000);

 return 0;
}
