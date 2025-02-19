
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct itg3200 {struct i2c_client* i2c; } ;
struct iio_dev {int dummy; } ;
struct i2c_msg {int flags; int len; char* buf; int addr; } ;
struct i2c_client {int flags; int adapter; int addr; } ;
typedef int s16 ;


 int I2C_M_RD ;
 int be16_to_cpus (int*) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 struct itg3200* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int itg3200_read_reg_s16(struct iio_dev *indio_dev, u8 lower_reg_address,
  int *val)
{
 struct itg3200 *st = iio_priv(indio_dev);
 struct i2c_client *client = st->i2c;
 int ret;
 s16 out;

 struct i2c_msg msg[2] = {
  {
   .addr = client->addr,
   .flags = client->flags,
   .len = 1,
   .buf = (char *)&lower_reg_address,
  },
  {
   .addr = client->addr,
   .flags = client->flags | I2C_M_RD,
   .len = 2,
   .buf = (char *)&out,
  },
 };

 lower_reg_address |= 0x80;
 ret = i2c_transfer(client->adapter, msg, 2);
 be16_to_cpus(&out);
 *val = out;

 return (ret == 2) ? 0 : ret;
}
