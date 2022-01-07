
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m88ds3103_dev {int muxc; } ;
struct i2c_client {int dev; } ;


 int dev_dbg (int *,char*) ;
 struct m88ds3103_dev* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_mux_del_adapters (int ) ;
 int kfree (struct m88ds3103_dev*) ;

__attribute__((used)) static int m88ds3103_remove(struct i2c_client *client)
{
 struct m88ds3103_dev *dev = i2c_get_clientdata(client);

 dev_dbg(&client->dev, "\n");

 i2c_mux_del_adapters(dev->muxc);

 kfree(dev);
 return 0;
}
