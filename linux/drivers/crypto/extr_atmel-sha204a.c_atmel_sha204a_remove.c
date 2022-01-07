
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dev; } ;
struct TYPE_2__ {scalar_t__ priv; } ;
struct atmel_i2c_client_priv {TYPE_1__ hwrng; int tfm_count; } ;


 int EBUSY ;
 scalar_t__ atomic_read (int *) ;
 int dev_err (int *,char*) ;
 struct atmel_i2c_client_priv* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (void*) ;

__attribute__((used)) static int atmel_sha204a_remove(struct i2c_client *client)
{
 struct atmel_i2c_client_priv *i2c_priv = i2c_get_clientdata(client);

 if (atomic_read(&i2c_priv->tfm_count)) {
  dev_err(&client->dev, "Device is busy\n");
  return -EBUSY;
 }

 if (i2c_priv->hwrng.priv)
  kfree((void *)i2c_priv->hwrng.priv);

 return 0;
}
