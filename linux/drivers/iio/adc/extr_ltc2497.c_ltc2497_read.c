
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ltc2497_st {scalar_t__ addr_prev; int buf; int time_prev; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int ERESTARTSYS ;
 int LTC2497_CONVERSION_TIME_MS ;
 scalar_t__ LTC2497_ENABLE ;
 int be32_to_cpu (int ) ;
 int dev_err (int *,char*) ;
 int i2c_master_recv (struct i2c_client*,char*,int) ;
 int i2c_smbus_write_byte (struct i2c_client*,scalar_t__) ;
 int ktime_get () ;
 int ltc2497_wait_conv (struct ltc2497_st*) ;
 scalar_t__ msleep_interruptible (int ) ;

__attribute__((used)) static int ltc2497_read(struct ltc2497_st *st, u8 address, int *val)
{
 struct i2c_client *client = st->client;
 int ret;

 ret = ltc2497_wait_conv(st);
 if (ret < 0)
  return ret;

 if (ret || st->addr_prev != address) {
  ret = i2c_smbus_write_byte(st->client,
        LTC2497_ENABLE | address);
  if (ret < 0)
   return ret;
  st->addr_prev = address;
  if (msleep_interruptible(LTC2497_CONVERSION_TIME_MS))
   return -ERESTARTSYS;
 }
 ret = i2c_master_recv(client, (char *)&st->buf, 3);
 if (ret < 0) {
  dev_err(&client->dev, "i2c_master_recv failed\n");
  return ret;
 }
 st->time_prev = ktime_get();




 *val = (be32_to_cpu(st->buf) >> 14) - (1 << 17);

 return ret;
}
