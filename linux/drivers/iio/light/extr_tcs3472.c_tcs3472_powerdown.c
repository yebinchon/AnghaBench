
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tcs3472_data {int enable; int lock; int client; } ;


 int TCS3472_ENABLE ;
 int TCS3472_ENABLE_AEN ;
 int TCS3472_ENABLE_PON ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int tcs3472_powerdown(struct tcs3472_data *data)
{
 int ret;
 u8 enable_mask = TCS3472_ENABLE_AEN | TCS3472_ENABLE_PON;

 mutex_lock(&data->lock);

 ret = i2c_smbus_write_byte_data(data->client, TCS3472_ENABLE,
  data->enable & ~enable_mask);
 if (!ret)
  data->enable &= ~enable_mask;

 mutex_unlock(&data->lock);

 return ret;
}
