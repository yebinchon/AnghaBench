
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct TYPE_3__ {int quality; int read; int name; } ;
struct atmel_i2c_client_priv {TYPE_1__ hwrng; } ;


 int atmel_i2c_probe (struct i2c_client*,struct i2c_device_id const*) ;
 int atmel_sha204a_rng_read ;
 int dev_name (int *) ;
 int dev_warn (int *,char*,int) ;
 int devm_hwrng_register (int *,TYPE_1__*) ;
 struct atmel_i2c_client_priv* i2c_get_clientdata (struct i2c_client*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int atmel_sha204a_probe(struct i2c_client *client,
          const struct i2c_device_id *id)
{
 struct atmel_i2c_client_priv *i2c_priv;
 int ret;

 ret = atmel_i2c_probe(client, id);
 if (ret)
  return ret;

 i2c_priv = i2c_get_clientdata(client);

 memset(&i2c_priv->hwrng, 0, sizeof(i2c_priv->hwrng));

 i2c_priv->hwrng.name = dev_name(&client->dev);
 i2c_priv->hwrng.read = atmel_sha204a_rng_read;
 i2c_priv->hwrng.quality = 1024;

 ret = devm_hwrng_register(&client->dev, &i2c_priv->hwrng);
 if (ret)
  dev_warn(&client->dev, "failed to register RNG (%d)\n", ret);

 return ret;
}
