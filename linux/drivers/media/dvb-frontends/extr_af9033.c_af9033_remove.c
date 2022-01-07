
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct af9033_dev {int regmap; } ;


 int dev_dbg (int *,char*) ;
 struct af9033_dev* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct af9033_dev*) ;
 int regmap_exit (int ) ;

__attribute__((used)) static int af9033_remove(struct i2c_client *client)
{
 struct af9033_dev *dev = i2c_get_clientdata(client);

 dev_dbg(&client->dev, "\n");

 regmap_exit(dev->regmap);
 kfree(dev);

 return 0;
}
