
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int irq; int dev; } ;
struct auo_pixcir_ts {int stopped; struct i2c_client* client; } ;


 int AUO_PIXCIR_POWER_ACTIVE ;
 int auo_pixcir_int_toggle (struct auo_pixcir_ts*,int) ;
 int auo_pixcir_power_mode (struct auo_pixcir_ts*,int ) ;
 int dev_err (int *,char*,int) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int mb () ;

__attribute__((used)) static int auo_pixcir_start(struct auo_pixcir_ts *ts)
{
 struct i2c_client *client = ts->client;
 int ret;

 ret = auo_pixcir_power_mode(ts, AUO_PIXCIR_POWER_ACTIVE);
 if (ret < 0) {
  dev_err(&client->dev, "could not set power mode, %d\n",
   ret);
  return ret;
 }

 ts->stopped = 0;
 mb();
 enable_irq(client->irq);

 ret = auo_pixcir_int_toggle(ts, 1);
 if (ret < 0) {
  dev_err(&client->dev, "could not enable interrupt, %d\n",
   ret);
  disable_irq(client->irq);
  return ret;
 }

 return 0;
}
