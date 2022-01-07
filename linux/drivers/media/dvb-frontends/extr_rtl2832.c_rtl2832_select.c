
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl2832_dev {int regmap; int i2c_gate_work; struct i2c_client* client; } ;
struct i2c_mux_core {int dummy; } ;
struct i2c_client {int dev; } ;


 int cancel_delayed_work (int *) ;
 int dev_dbg (int *,char*,int) ;
 struct rtl2832_dev* i2c_mux_priv (struct i2c_mux_core*) ;
 int regmap_update_bits (int ,int,int,int) ;

__attribute__((used)) static int rtl2832_select(struct i2c_mux_core *muxc, u32 chan_id)
{
 struct rtl2832_dev *dev = i2c_mux_priv(muxc);
 struct i2c_client *client = dev->client;
 int ret;


 cancel_delayed_work(&dev->i2c_gate_work);


 ret = regmap_update_bits(dev->regmap, 0x101, 0x08, 0x08);
 if (ret)
  goto err;

 return 0;
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
