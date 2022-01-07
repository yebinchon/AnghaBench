
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct lm90_data {int flags; int alert_alarms; int config; } ;
struct i2c_client {int dev; } ;
typedef enum i2c_alert_protocol { ____Placeholder_i2c_alert_protocol } i2c_alert_protocol ;


 int I2C_PROTOCOL_SMBUS_ALERT ;
 int LM90_HAVE_BROKEN_ALERT ;
 int dev_dbg (int *,char*) ;
 int dev_info (int *,char*) ;
 struct lm90_data* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ lm90_is_tripped (struct i2c_client*,int*) ;
 int lm90_update_confreg (struct lm90_data*,int) ;

__attribute__((used)) static void lm90_alert(struct i2c_client *client, enum i2c_alert_protocol type,
         unsigned int flag)
{
 u16 alarms;

 if (type != I2C_PROTOCOL_SMBUS_ALERT)
  return;

 if (lm90_is_tripped(client, &alarms)) {





  struct lm90_data *data = i2c_get_clientdata(client);

  if ((data->flags & LM90_HAVE_BROKEN_ALERT) &&
      (alarms & data->alert_alarms)) {
   dev_dbg(&client->dev, "Disabling ALERT#\n");
   lm90_update_confreg(data, data->config | 0x80);
  }
 } else {
  dev_info(&client->dev, "Everything OK\n");
 }
}
