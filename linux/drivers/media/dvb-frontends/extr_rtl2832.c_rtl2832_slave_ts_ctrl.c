
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl2832_dev {int slave_ts; int regmap; } ;
struct i2c_client {int dev; } ;


 int DVBT_PIP_ON ;
 int DVBT_SOFT_RST ;
 int dev_dbg (int *,char*,int) ;
 struct rtl2832_dev* i2c_get_clientdata (struct i2c_client*) ;
 int regmap_bulk_write (int ,int,char*,int) ;
 int rtl2832_wr_demod_reg (struct rtl2832_dev*,int ,int) ;

__attribute__((used)) static int rtl2832_slave_ts_ctrl(struct i2c_client *client, bool enable)
{
 struct rtl2832_dev *dev = i2c_get_clientdata(client);
 int ret;

 dev_dbg(&client->dev, "enable=%d\n", enable);

 if (enable) {
  ret = rtl2832_wr_demod_reg(dev, DVBT_SOFT_RST, 0x0);
  if (ret)
   goto err;
  ret = regmap_bulk_write(dev->regmap, 0x10c, "\x5f\xff", 2);
  if (ret)
   goto err;
  ret = rtl2832_wr_demod_reg(dev, DVBT_PIP_ON, 0x1);
  if (ret)
   goto err;
  ret = regmap_bulk_write(dev->regmap, 0x0bc, "\x18", 1);
  if (ret)
   goto err;
  ret = regmap_bulk_write(dev->regmap, 0x192, "\x7f\xf7\xff", 3);
  if (ret)
   goto err;
 } else {
  ret = regmap_bulk_write(dev->regmap, 0x192, "\x00\x0f\xff", 3);
  if (ret)
   goto err;
  ret = regmap_bulk_write(dev->regmap, 0x0bc, "\x08", 1);
  if (ret)
   goto err;
  ret = rtl2832_wr_demod_reg(dev, DVBT_PIP_ON, 0x0);
  if (ret)
   goto err;
  ret = regmap_bulk_write(dev->regmap, 0x10c, "\x00\x00", 2);
  if (ret)
   goto err;
  ret = rtl2832_wr_demod_reg(dev, DVBT_SOFT_RST, 0x1);
  if (ret)
   goto err;
 }

 dev->slave_ts = enable;

 return 0;
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
