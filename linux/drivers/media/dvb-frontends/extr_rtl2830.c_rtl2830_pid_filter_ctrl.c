
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;
struct dvb_frontend {struct i2c_client* demodulator_priv; } ;


 int dev_dbg (int *,char*,int) ;
 int rtl2830_update_bits (struct i2c_client*,int,int,int) ;

__attribute__((used)) static int rtl2830_pid_filter_ctrl(struct dvb_frontend *fe, int onoff)
{
 struct i2c_client *client = fe->demodulator_priv;
 int ret;
 u8 u8tmp;

 dev_dbg(&client->dev, "onoff=%d\n", onoff);


 if (onoff)
  u8tmp = 0x80;
 else
  u8tmp = 0x00;

 ret = rtl2830_update_bits(client, 0x061, 0x80, u8tmp);
 if (ret)
  goto err;

 return 0;
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
