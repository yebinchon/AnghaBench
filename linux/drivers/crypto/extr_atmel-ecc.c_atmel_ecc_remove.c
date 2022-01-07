
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dev; } ;
struct atmel_i2c_client_priv {int i2c_client_list_node; int tfm_count; } ;
struct TYPE_2__ {int i2c_list_lock; } ;


 int EBUSY ;
 int atmel_ecdh ;
 scalar_t__ atomic_read (int *) ;
 int crypto_unregister_kpp (int *) ;
 int dev_err (int *,char*) ;
 TYPE_1__ driver_data ;
 struct atmel_i2c_client_priv* i2c_get_clientdata (struct i2c_client*) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int atmel_ecc_remove(struct i2c_client *client)
{
 struct atmel_i2c_client_priv *i2c_priv = i2c_get_clientdata(client);


 if (atomic_read(&i2c_priv->tfm_count)) {
  dev_err(&client->dev, "Device is busy\n");
  return -EBUSY;
 }

 crypto_unregister_kpp(&atmel_ecdh);

 spin_lock(&driver_data.i2c_list_lock);
 list_del(&i2c_priv->i2c_client_list_node);
 spin_unlock(&driver_data.i2c_list_lock);

 return 0;
}
