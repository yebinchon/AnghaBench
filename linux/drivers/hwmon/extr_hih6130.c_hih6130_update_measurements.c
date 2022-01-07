
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int len; unsigned char* buf; int flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;
struct hih6130 {int valid; int lock; scalar_t__ last_update; int temperature; int humidity; int write_length; struct i2c_client* client; } ;
struct device {int dummy; } ;


 int EIO ;
 scalar_t__ HZ ;
 int I2C_M_RD ;
 int dev_err (int *,char*) ;
 struct hih6130* dev_get_drvdata (struct device*) ;
 int hih6130_rh_ticks_to_per_cent_mille (int) ;
 int hih6130_temp_ticks_to_millicelsius (int) ;
 int i2c_master_send (struct i2c_client*,unsigned char*,int ) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 scalar_t__ jiffies ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static int hih6130_update_measurements(struct device *dev)
{
 struct hih6130 *hih6130 = dev_get_drvdata(dev);
 struct i2c_client *client = hih6130->client;
 int ret = 0;
 int t;
 unsigned char tmp[4];
 struct i2c_msg msgs[1] = {
  {
   .addr = client->addr,
   .flags = I2C_M_RD,
   .len = 4,
   .buf = tmp,
  }
 };

 mutex_lock(&hih6130->lock);
 if (time_after(jiffies, hih6130->last_update + HZ) || !hih6130->valid) {
  tmp[0] = 0;
  ret = i2c_master_send(client, tmp, hih6130->write_length);
  if (ret < 0)
   goto out;


  msleep(40);

  ret = i2c_transfer(client->adapter, msgs, 1);
  if (ret < 0)
   goto out;

  if ((tmp[0] & 0xC0) != 0) {
   dev_err(&client->dev, "Error while reading measurement result\n");
   ret = -EIO;
   goto out;
  }

  t = (tmp[0] << 8) + tmp[1];
  hih6130->humidity = hih6130_rh_ticks_to_per_cent_mille(t);

  t = (tmp[2] << 8) + tmp[3];
  hih6130->temperature = hih6130_temp_ticks_to_millicelsius(t);

  hih6130->last_update = jiffies;
  hih6130->valid = 1;
 }
out:
 mutex_unlock(&hih6130->lock);

 return ret >= 0 ? 0 : ret;
}
