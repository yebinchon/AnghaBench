
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl2832_dev {int regmap; int muxc; int i2c_gate_work; } ;
struct i2c_client {int dev; } ;


 int cancel_delayed_work_sync (int *) ;
 int dev_dbg (int *,char*) ;
 struct rtl2832_dev* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_mux_del_adapters (int ) ;
 int kfree (struct rtl2832_dev*) ;
 int regmap_exit (int ) ;

__attribute__((used)) static int rtl2832_remove(struct i2c_client *client)
{
 struct rtl2832_dev *dev = i2c_get_clientdata(client);

 dev_dbg(&client->dev, "\n");

 cancel_delayed_work_sync(&dev->i2c_gate_work);

 i2c_mux_del_adapters(dev->muxc);

 regmap_exit(dev->regmap);

 kfree(dev);

 return 0;
}
