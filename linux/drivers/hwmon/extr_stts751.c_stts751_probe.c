
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stts751_priv {int notify_max; int notify_min; int config; int dev; int access_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int name; int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (int ) ;
 int STTS751_CONF_EVENT_DIS ;
 int STTS751_CONF_STOP ;
 int STTS751_REG_CONF ;
 int STTS751_REG_REV_ID ;
 int STTS751_REG_SMBUS_TO ;
 int dev_dbg (int *,char*,int) ;
 scalar_t__ device_property_present (int *,char*) ;
 int device_property_read_bool (int *,char*) ;
 int devm_hwmon_device_register_with_groups (int *,int ,struct stts751_priv*,int ) ;
 struct stts751_priv* devm_kzalloc (int *,int,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct stts751_priv*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int mutex_init (int *) ;
 int stts751_groups ;
 int stts751_read_chip_config (struct stts751_priv*) ;

__attribute__((used)) static int stts751_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct stts751_priv *priv;
 int ret;
 bool smbus_nto;
 int rev_id;

 priv = devm_kzalloc(&client->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->client = client;
 priv->notify_max = 1;
 priv->notify_min = 1;
 i2c_set_clientdata(client, priv);
 mutex_init(&priv->access_lock);

 if (device_property_present(&client->dev,
        "smbus-timeout-disable")) {
  smbus_nto = device_property_read_bool(&client->dev,
            "smbus-timeout-disable");

  ret = i2c_smbus_write_byte_data(client, STTS751_REG_SMBUS_TO,
      smbus_nto ? 0 : 0x80);
  if (ret)
   return ret;
 }

 rev_id = i2c_smbus_read_byte_data(client, STTS751_REG_REV_ID);
 if (rev_id < 0)
  return -ENODEV;
 if (rev_id != 0x1) {
  dev_dbg(&client->dev, "Chip revision 0x%x is untested\n",
   rev_id);
 }

 ret = stts751_read_chip_config(priv);
 if (ret)
  return ret;

 priv->config &= ~(STTS751_CONF_STOP | STTS751_CONF_EVENT_DIS);
 ret = i2c_smbus_write_byte_data(client, STTS751_REG_CONF, priv->config);
 if (ret)
  return ret;

 priv->dev = devm_hwmon_device_register_with_groups(&client->dev,
       client->name, priv,
       stts751_groups);
 return PTR_ERR_OR_ZERO(priv->dev);
}
