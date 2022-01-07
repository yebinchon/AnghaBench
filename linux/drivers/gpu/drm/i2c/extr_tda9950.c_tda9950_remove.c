
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda9950_priv {int notify; int adap; } ;
struct i2c_client {int dummy; } ;


 int cec_notifier_put (int ) ;
 int cec_unregister_adapter (int ) ;
 struct tda9950_priv* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int tda9950_remove(struct i2c_client *client)
{
 struct tda9950_priv *priv = i2c_get_clientdata(client);

 cec_unregister_adapter(priv->adap);
 cec_notifier_put(priv->notify);

 return 0;
}
