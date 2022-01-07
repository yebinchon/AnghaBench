
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stts751_priv {int max_alert; int min_alert; int notify_max; int notify_min; int access_lock; TYPE_1__* dev; } ;
struct i2c_client {int dev; } ;
typedef enum i2c_alert_protocol { ____Placeholder_i2c_alert_protocol } i2c_alert_protocol ;
struct TYPE_3__ {int kobj; } ;


 int I2C_PROTOCOL_SMBUS_ALERT ;
 int KOBJ_CHANGE ;
 int dev_dbg (int *,char*) ;
 int dev_notice (TYPE_1__*,char*) ;
 int dev_warn (TYPE_1__*,char*) ;
 struct stts751_priv* i2c_get_clientdata (struct i2c_client*) ;
 int kobject_uevent (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stts751_update_alert (struct stts751_priv*) ;
 int sysfs_notify (int *,int *,char*) ;

__attribute__((used)) static void stts751_alert(struct i2c_client *client,
     enum i2c_alert_protocol type, unsigned int data)
{
 int ret;
 struct stts751_priv *priv = i2c_get_clientdata(client);

 if (type != I2C_PROTOCOL_SMBUS_ALERT)
  return;

 dev_dbg(&client->dev, "alert!");

 mutex_lock(&priv->access_lock);
 ret = stts751_update_alert(priv);
 if (ret < 0) {

  priv->max_alert = 1;
  priv->min_alert = 1;

  dev_warn(priv->dev,
    "Alert received, but can't communicate to the device. Triggering all alarms!");
 }

 if (priv->max_alert) {
  if (priv->notify_max)
   dev_notice(priv->dev, "got alert for HIGH temperature");
  priv->notify_max = 0;


  sysfs_notify(&priv->dev->kobj, ((void*)0), "temp1_max_alarm");
 }

 if (priv->min_alert) {
  if (priv->notify_min)
   dev_notice(priv->dev, "got alert for LOW temperature");
  priv->notify_min = 0;


  sysfs_notify(&priv->dev->kobj, ((void*)0), "temp1_min_alarm");
 }

 if (priv->min_alert || priv->max_alert)
  kobject_uevent(&priv->dev->kobj, KOBJ_CHANGE);

 mutex_unlock(&priv->access_lock);
}
