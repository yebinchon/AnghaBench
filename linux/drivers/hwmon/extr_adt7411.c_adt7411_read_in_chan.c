
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct adt7411_data {int vref_cached; int update_lock; struct i2c_client* client; } ;


 int ADT7411_REG_EXT_TEMP_AIN14_LSB ;
 int ADT7411_REG_EXT_TEMP_AIN1_MSB ;
 int ADT7411_REG_IN_HIGH (int) ;
 int ADT7411_REG_IN_LOW (int) ;
 int EOPNOTSUPP ;
 int adt7411_read_10_bit (struct i2c_client*,int,int ,int) ;
 int adt7411_read_in_alarm (struct device*,int,long*) ;
 int adt7411_update_vref (struct device*) ;
 struct adt7411_data* dev_get_drvdata (struct device*) ;




 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int adt7411_read_in_chan(struct device *dev, u32 attr, int channel,
    long *val)
{
 struct adt7411_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;

 int ret;
 int reg, lsb_reg, lsb_shift;
 int nr = channel - 1;

 mutex_lock(&data->update_lock);
 ret = adt7411_update_vref(dev);
 if (ret < 0)
  goto exit_unlock;

 switch (attr) {
 case 130:
  lsb_reg = ADT7411_REG_EXT_TEMP_AIN14_LSB + (nr >> 2);
  lsb_shift = 2 * (nr & 0x03);
  ret = adt7411_read_10_bit(client, lsb_reg,
       ADT7411_REG_EXT_TEMP_AIN1_MSB + nr,
       lsb_shift);
  if (ret < 0)
   goto exit_unlock;
  *val = ret * data->vref_cached / 1024;
  ret = 0;
  break;
 case 128:
 case 129:
  reg = (attr == 128)
   ? ADT7411_REG_IN_LOW(channel)
   : ADT7411_REG_IN_HIGH(channel);
  ret = i2c_smbus_read_byte_data(client, reg);
  if (ret < 0)
   goto exit_unlock;
  *val = ret * data->vref_cached / 256;
  ret = 0;
  break;
 case 131:
  ret = adt7411_read_in_alarm(dev, channel, val);
  break;
 default:
  ret = -EOPNOTSUPP;
  break;
 }
 exit_unlock:
 mutex_unlock(&data->update_lock);
 return ret;
}
