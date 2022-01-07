
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct a8293_dev {int dummy; } ;


 int dev_dbg (int *,char*) ;
 struct a8293_dev* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct a8293_dev*) ;

__attribute__((used)) static int a8293_remove(struct i2c_client *client)
{
 struct a8293_dev *dev = i2c_get_clientdata(client);

 dev_dbg(&client->dev, "\n");

 kfree(dev);
 return 0;
}
