
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dev; } ;
struct dvb_frontend {struct af9033_dev* demodulator_priv; } ;
struct TYPE_2__ {scalar_t__ ts_mode; } ;
struct af9033_dev {int regmap; TYPE_1__ cfg; struct i2c_client* client; } ;


 scalar_t__ AF9033_TS_MODE_SERIAL ;
 int dev_dbg (int *,char*,...) ;
 int regmap_read_poll_timeout (int ,int,unsigned int,int,int,int) ;
 int regmap_update_bits (int ,int,int,int) ;
 int regmap_write (int ,int,int) ;

__attribute__((used)) static int af9033_sleep(struct dvb_frontend *fe)
{
 struct af9033_dev *dev = fe->demodulator_priv;
 struct i2c_client *client = dev->client;
 int ret;
 unsigned int utmp;

 dev_dbg(&client->dev, "\n");

 ret = regmap_write(dev->regmap, 0x80004c, 0x01);
 if (ret)
  goto err;
 ret = regmap_write(dev->regmap, 0x800000, 0x00);
 if (ret)
  goto err;
 ret = regmap_read_poll_timeout(dev->regmap, 0x80004c, utmp, utmp == 0,
           5000, 1000000);
 if (ret)
  goto err;
 ret = regmap_update_bits(dev->regmap, 0x80fb24, 0x08, 0x08);
 if (ret)
  goto err;


 if (dev->cfg.ts_mode == AF9033_TS_MODE_SERIAL) {

  ret = regmap_update_bits(dev->regmap, 0x00d917, 0x01, 0x00);
  if (ret)
   goto err;
  ret = regmap_update_bits(dev->regmap, 0x00d916, 0x01, 0x01);
  if (ret)
   goto err;
 }

 return 0;
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
