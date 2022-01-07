
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pixcir_i2c_ts_data {int running; scalar_t__ gpio_enable; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int PIXCIR_INT_LEVEL_TOUCH ;
 int dev_err (struct device*,char*,int) ;
 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int mb () ;
 int msleep (int) ;
 int pixcir_int_enable (struct pixcir_i2c_ts_data*,int) ;
 int pixcir_set_int_mode (struct pixcir_i2c_ts_data*,int ,int ) ;

__attribute__((used)) static int pixcir_start(struct pixcir_i2c_ts_data *ts)
{
 struct device *dev = &ts->client->dev;
 int error;

 if (ts->gpio_enable) {
  gpiod_set_value_cansleep(ts->gpio_enable, 1);
  msleep(100);
 }


 error = pixcir_set_int_mode(ts, PIXCIR_INT_LEVEL_TOUCH, 0);
 if (error) {
  dev_err(dev, "Failed to set interrupt mode: %d\n", error);
  return error;
 }

 ts->running = 1;
 mb();


 error = pixcir_int_enable(ts, 1);
 if (error) {
  dev_err(dev, "Failed to enable interrupt generation: %d\n",
   error);
  return error;
 }

 return 0;
}
