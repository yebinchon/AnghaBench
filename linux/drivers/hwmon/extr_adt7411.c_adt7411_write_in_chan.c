
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct adt7411_data {int vref_cached; int update_lock; struct i2c_client* client; } ;


 int ADT7411_REG_IN_HIGH (int) ;
 int ADT7411_REG_IN_LOW (int) ;
 long DIV_ROUND_CLOSEST (long,int) ;
 int EOPNOTSUPP ;
 int adt7411_update_vref (struct device*) ;
 long clamp_val (long,int ,int) ;
 struct adt7411_data* dev_get_drvdata (struct device*) ;


 int i2c_smbus_write_byte_data (struct i2c_client*,int,long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int adt7411_write_in_chan(struct device *dev, u32 attr, int channel,
     long val)
{
 struct adt7411_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int ret, reg;

 mutex_lock(&data->update_lock);
 ret = adt7411_update_vref(dev);
 if (ret < 0)
  goto exit_unlock;
 val = clamp_val(val, 0, 255 * data->vref_cached / 256);
 val = DIV_ROUND_CLOSEST(val * 256, data->vref_cached);

 switch (attr) {
 case 128:
  reg = ADT7411_REG_IN_LOW(channel);
  break;
 case 129:
  reg = ADT7411_REG_IN_HIGH(channel);
  break;
 default:
  ret = -EOPNOTSUPP;
  goto exit_unlock;
 }

 ret = i2c_smbus_write_byte_data(client, reg, val);
 exit_unlock:
 mutex_unlock(&data->update_lock);
 return ret;
}
