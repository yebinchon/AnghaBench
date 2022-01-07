
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pixcir_i2c_ts_data {int running; scalar_t__ gpio_enable; TYPE_1__* client; } ;
struct TYPE_2__ {int irq; int dev; } ;


 int dev_err (int *,char*,int) ;
 int gpiod_set_value_cansleep (scalar_t__,int ) ;
 int mb () ;
 int pixcir_int_enable (struct pixcir_i2c_ts_data*,int) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static int pixcir_stop(struct pixcir_i2c_ts_data *ts)
{
 int error;


 error = pixcir_int_enable(ts, 0);
 if (error) {
  dev_err(&ts->client->dev,
   "Failed to disable interrupt generation: %d\n",
   error);
  return error;
 }


 ts->running = 0;
 mb();


 synchronize_irq(ts->client->irq);

 if (ts->gpio_enable)
  gpiod_set_value_cansleep(ts->gpio_enable, 0);

 return 0;
}
