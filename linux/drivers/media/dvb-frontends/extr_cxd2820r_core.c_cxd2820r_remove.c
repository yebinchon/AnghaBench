
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dev; } ;
struct TYPE_2__ {scalar_t__ label; } ;
struct cxd2820r_priv {int * regmap; int * client; TYPE_1__ gpio_chip; } ;


 int dev_dbg (int *,char*) ;
 int gpiochip_remove (TYPE_1__*) ;
 struct cxd2820r_priv* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_unregister_device (int ) ;
 int kfree (struct cxd2820r_priv*) ;
 int regmap_exit (int ) ;

__attribute__((used)) static int cxd2820r_remove(struct i2c_client *client)
{
 struct cxd2820r_priv *priv = i2c_get_clientdata(client);

 dev_dbg(&client->dev, "\n");





 regmap_exit(priv->regmap[1]);
 i2c_unregister_device(priv->client[1]);

 regmap_exit(priv->regmap[0]);

 kfree(priv);

 return 0;
}
