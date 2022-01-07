
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct zopt2201_data {size_t res; int lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
typedef int buf ;
struct TYPE_2__ {unsigned long us; } ;


 int ETIMEDOUT ;
 int ZOPT2201_MAIN_CTRL ;
 int ZOPT2201_MAIN_STATUS ;
 int ZOPT2201_MAIN_STATUS_DRDY ;
 int ZOPT2201_UVB_DATA ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_read_i2c_block_data (struct i2c_client*,int,int,int*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int msleep (unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usleep_range (unsigned long,unsigned long) ;
 int zopt2201_enable_mode (struct zopt2201_data*,int) ;
 TYPE_1__* zopt2201_resolution ;

__attribute__((used)) static int zopt2201_read(struct zopt2201_data *data, u8 reg)
{
 struct i2c_client *client = data->client;
 int tries = 10;
 u8 buf[3];
 int ret;

 mutex_lock(&data->lock);
 ret = zopt2201_enable_mode(data, reg == ZOPT2201_UVB_DATA);
 if (ret < 0)
  goto fail;

 while (tries--) {
  unsigned long t = zopt2201_resolution[data->res].us;

  if (t <= 20000)
   usleep_range(t, t + 1000);
  else
   msleep(t / 1000);
  ret = i2c_smbus_read_byte_data(client, ZOPT2201_MAIN_STATUS);
  if (ret < 0)
   goto fail;
  if (ret & ZOPT2201_MAIN_STATUS_DRDY)
   break;
 }

 if (tries < 0) {
  ret = -ETIMEDOUT;
  goto fail;
 }

 ret = i2c_smbus_read_i2c_block_data(client, reg, sizeof(buf), buf);
 if (ret < 0)
  goto fail;

 ret = i2c_smbus_write_byte_data(client, ZOPT2201_MAIN_CTRL, 0x00);
 if (ret < 0)
  goto fail;
 mutex_unlock(&data->lock);

 return (buf[2] << 16) | (buf[1] << 8) | buf[0];

fail:
 mutex_unlock(&data->lock);
 return ret;
}
