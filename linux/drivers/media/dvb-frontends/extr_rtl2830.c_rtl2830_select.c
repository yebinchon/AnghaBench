
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl2830_dev {int regmap; } ;
struct i2c_mux_core {int dummy; } ;
struct i2c_client {int dev; } ;


 int dev_dbg (int *,char*,...) ;
 struct rtl2830_dev* i2c_get_clientdata (struct i2c_client*) ;
 struct i2c_client* i2c_mux_priv (struct i2c_mux_core*) ;
 int regmap_update_bits (int ,int,int,int) ;

__attribute__((used)) static int rtl2830_select(struct i2c_mux_core *muxc, u32 chan_id)
{
 struct i2c_client *client = i2c_mux_priv(muxc);
 struct rtl2830_dev *dev = i2c_get_clientdata(client);
 int ret;

 dev_dbg(&client->dev, "\n");



 ret = regmap_update_bits(dev->regmap, 0x101, 0x08, 0x08);
 if (ret)
  goto err;

 return 0;
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
