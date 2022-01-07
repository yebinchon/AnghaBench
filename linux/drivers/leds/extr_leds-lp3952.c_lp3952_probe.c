
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp3952_led_array {int regmap; int enable_gpio; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,int) ;
 int devm_gpiod_get (int *,char*,int ) ;
 struct lp3952_led_array* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct lp3952_led_array*) ;
 int lp3952_configure (struct lp3952_led_array*) ;
 int lp3952_register_led_classdev (struct lp3952_led_array*) ;
 int lp3952_regmap ;

__attribute__((used)) static int lp3952_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 int status;
 struct lp3952_led_array *priv;

 priv = devm_kzalloc(&client->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->client = client;

 priv->enable_gpio = devm_gpiod_get(&client->dev, "nrst",
        GPIOD_OUT_HIGH);
 if (IS_ERR(priv->enable_gpio)) {
  status = PTR_ERR(priv->enable_gpio);
  dev_err(&client->dev, "Failed to enable gpio: %d\n", status);
  return status;
 }

 priv->regmap = devm_regmap_init_i2c(client, &lp3952_regmap);
 if (IS_ERR(priv->regmap)) {
  int err = PTR_ERR(priv->regmap);

  dev_err(&client->dev, "Failed to allocate register map: %d\n",
   err);
  return err;
 }

 i2c_set_clientdata(client, priv);

 status = lp3952_configure(priv);
 if (status) {
  dev_err(&client->dev, "Probe failed. Device not found (%d)\n",
   status);
  return status;
 }

 status = lp3952_register_led_classdev(priv);
 if (status) {
  dev_err(&client->dev, "Unable to register led_classdev: %d\n",
   status);
  return status;
 }

 return 0;
}
