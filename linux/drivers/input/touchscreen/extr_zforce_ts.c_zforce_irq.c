
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zforce_ts {scalar_t__ suspended; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;
 scalar_t__ device_may_wakeup (int *) ;
 int pm_wakeup_event (int *,int) ;

__attribute__((used)) static irqreturn_t zforce_irq(int irq, void *dev_id)
{
 struct zforce_ts *ts = dev_id;
 struct i2c_client *client = ts->client;

 if (ts->suspended && device_may_wakeup(&client->dev))
  pm_wakeup_event(&client->dev, 500);

 return IRQ_WAKE_THREAD;
}
