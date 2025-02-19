
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtl2830_dev {int filters; } ;
struct i2c_client {int dev; } ;
struct dvb_frontend {struct i2c_client* demodulator_priv; } ;


 int clear_bit (int,int*) ;
 int dev_dbg (int *,char*,int,...) ;
 struct rtl2830_dev* i2c_get_clientdata (struct i2c_client*) ;
 int rtl2830_bulk_write (struct i2c_client*,int,int*,int) ;
 int set_bit (int,int*) ;

__attribute__((used)) static int rtl2830_pid_filter(struct dvb_frontend *fe, u8 index, u16 pid, int onoff)
{
 struct i2c_client *client = fe->demodulator_priv;
 struct rtl2830_dev *dev = i2c_get_clientdata(client);
 int ret;
 u8 buf[4];

 dev_dbg(&client->dev, "index=%d pid=%04x onoff=%d\n",
  index, pid, onoff);


 if (pid > 0x1fff || index > 32)
  return 0;

 if (onoff)
  set_bit(index, &dev->filters);
 else
  clear_bit(index, &dev->filters);


 buf[0] = (dev->filters >> 0) & 0xff;
 buf[1] = (dev->filters >> 8) & 0xff;
 buf[2] = (dev->filters >> 16) & 0xff;
 buf[3] = (dev->filters >> 24) & 0xff;
 ret = rtl2830_bulk_write(client, 0x062, buf, 4);
 if (ret)
  goto err;


 buf[0] = (pid >> 8) & 0xff;
 buf[1] = (pid >> 0) & 0xff;
 ret = rtl2830_bulk_write(client, 0x066 + 2 * index, buf, 2);
 if (ret)
  goto err;

 return 0;
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
