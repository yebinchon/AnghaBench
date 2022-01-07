
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mn88473_dev {int * regmap; int * client; } ;
struct i2c_client {int dev; } ;


 int dev_dbg (int *,char*) ;
 struct mn88473_dev* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_unregister_device (int ) ;
 int kfree (struct mn88473_dev*) ;
 int regmap_exit (int ) ;

__attribute__((used)) static int mn88473_remove(struct i2c_client *client)
{
 struct mn88473_dev *dev = i2c_get_clientdata(client);

 dev_dbg(&client->dev, "\n");

 regmap_exit(dev->regmap[2]);
 i2c_unregister_device(dev->client[2]);

 regmap_exit(dev->regmap[1]);
 i2c_unregister_device(dev->client[1]);

 regmap_exit(dev->regmap[0]);

 kfree(dev);

 return 0;
}
