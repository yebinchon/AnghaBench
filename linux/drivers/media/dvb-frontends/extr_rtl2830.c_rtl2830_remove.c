
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl2830_dev {int regmap; int muxc; } ;
struct i2c_client {int dev; } ;


 int dev_dbg (int *,char*) ;
 struct rtl2830_dev* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_mux_del_adapters (int ) ;
 int kfree (struct rtl2830_dev*) ;
 int regmap_exit (int ) ;

__attribute__((used)) static int rtl2830_remove(struct i2c_client *client)
{
 struct rtl2830_dev *dev = i2c_get_clientdata(client);

 dev_dbg(&client->dev, "\n");

 i2c_mux_del_adapters(dev->muxc);
 regmap_exit(dev->regmap);
 kfree(dev);

 return 0;
}
