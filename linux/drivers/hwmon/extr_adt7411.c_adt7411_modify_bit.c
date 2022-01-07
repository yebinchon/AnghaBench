
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
struct adt7411_data {int device_lock; } ;


 struct adt7411_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int adt7411_modify_bit(struct i2c_client *client, u8 reg, u8 bit,
    bool flag)
{
 struct adt7411_data *data = i2c_get_clientdata(client);
 int ret, val;

 mutex_lock(&data->device_lock);

 ret = i2c_smbus_read_byte_data(client, reg);
 if (ret < 0)
  goto exit_unlock;

 if (flag)
  val = ret | bit;
 else
  val = ret & ~bit;

 ret = i2c_smbus_write_byte_data(client, reg, val);

 exit_unlock:
 mutex_unlock(&data->device_lock);
 return ret;
}
