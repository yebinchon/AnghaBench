
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct migor_ts_priv {int input; int irq; } ;
struct i2c_client {int dev; } ;


 int dev_set_drvdata (int *,int *) ;
 int free_irq (int ,struct migor_ts_priv*) ;
 struct migor_ts_priv* i2c_get_clientdata (struct i2c_client*) ;
 int input_unregister_device (int ) ;
 int kfree (struct migor_ts_priv*) ;

__attribute__((used)) static int migor_ts_remove(struct i2c_client *client)
{
 struct migor_ts_priv *priv = i2c_get_clientdata(client);

 free_irq(priv->irq, priv);
 input_unregister_device(priv->input);
 kfree(priv);

 dev_set_drvdata(&client->dev, ((void*)0));

 return 0;
}
