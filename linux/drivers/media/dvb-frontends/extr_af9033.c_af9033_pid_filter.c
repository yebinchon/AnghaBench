
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dev; } ;
struct dvb_frontend {struct af9033_dev* demodulator_priv; } ;
struct af9033_dev {int regmap; struct i2c_client* client; } ;


 int dev_dbg (int *,char*,int,...) ;
 int regmap_bulk_write (int ,int,int*,int) ;
 int regmap_write (int ,int,int) ;

__attribute__((used)) static int af9033_pid_filter(struct dvb_frontend *fe, int index, u16 pid,
        int onoff)
{
 struct af9033_dev *dev = fe->demodulator_priv;
 struct i2c_client *client = dev->client;
 int ret;
 u8 wbuf[2] = {(pid >> 0) & 0xff, (pid >> 8) & 0xff};

 dev_dbg(&client->dev, "index=%d pid=%04x onoff=%d\n",
  index, pid, onoff);

 if (pid > 0x1fff)
  return 0;

 ret = regmap_bulk_write(dev->regmap, 0x80f996, wbuf, 2);
 if (ret)
  goto err;
 ret = regmap_write(dev->regmap, 0x80f994, onoff);
 if (ret)
  goto err;
 ret = regmap_write(dev->regmap, 0x80f995, index);
 if (ret)
  goto err;

 return 0;
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
