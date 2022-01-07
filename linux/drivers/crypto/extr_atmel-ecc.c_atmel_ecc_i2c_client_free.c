
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct atmel_i2c_client_priv {int tfm_count; } ;


 int atomic_dec (int *) ;
 struct atmel_i2c_client_priv* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static void atmel_ecc_i2c_client_free(struct i2c_client *client)
{
 struct atmel_i2c_client_priv *i2c_priv = i2c_get_clientdata(client);

 atomic_dec(&i2c_priv->tfm_count);
}
