
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
struct adt7411_data {int device_lock; } ;


 struct adt7411_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int adt7411_read_10_bit(struct i2c_client *client, u8 lsb_reg,
    u8 msb_reg, u8 lsb_shift)
{
 struct adt7411_data *data = i2c_get_clientdata(client);
 int val, tmp;

 mutex_lock(&data->device_lock);

 val = i2c_smbus_read_byte_data(client, lsb_reg);
 if (val < 0)
  goto exit_unlock;

 tmp = (val >> lsb_shift) & 3;
 val = i2c_smbus_read_byte_data(client, msb_reg);

 if (val >= 0)
  val = (val << 2) | tmp;

 exit_unlock:
 mutex_unlock(&data->device_lock);

 return val;
}
