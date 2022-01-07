
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int irq; int dev; } ;
struct auo_pixcir_ts {int stopped; int wait; struct i2c_client* client; } ;


 int AUO_PIXCIR_POWER_DEEP_SLEEP ;
 int auo_pixcir_int_toggle (struct auo_pixcir_ts*,int ) ;
 int auo_pixcir_power_mode (struct auo_pixcir_ts*,int ) ;
 int dev_err (int *,char*,int) ;
 int disable_irq (int ) ;
 int mb () ;
 int wake_up (int *) ;

__attribute__((used)) static int auo_pixcir_stop(struct auo_pixcir_ts *ts)
{
 struct i2c_client *client = ts->client;
 int ret;

 ret = auo_pixcir_int_toggle(ts, 0);
 if (ret < 0) {
  dev_err(&client->dev, "could not disable interrupt, %d\n",
   ret);
  return ret;
 }


 disable_irq(client->irq);
 ts->stopped = 1;
 mb();
 wake_up(&ts->wait);

 return auo_pixcir_power_mode(ts, AUO_PIXCIR_POWER_DEEP_SLEEP);
}
