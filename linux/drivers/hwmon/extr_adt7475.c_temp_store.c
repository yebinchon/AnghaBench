
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u8 ;
struct sensor_device_attribute_2 {int nr; size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int config5; long** temp; int lock; struct i2c_client* client; } ;
typedef size_t ssize_t ;



 int CONFIG5_TEMPOFFSET ;
 size_t EINVAL ;




 unsigned char REG_CONFIG5 ;
 unsigned char REG_REMOTE1_HYSTERSIS ;
 unsigned char REG_REMOTE2_HYSTERSIS ;
 unsigned char TEMP_MAX_REG (size_t) ;
 unsigned char TEMP_MIN_REG (size_t) ;
 unsigned char TEMP_OFFSET_REG (size_t) ;
 unsigned char TEMP_THERM_REG (size_t) ;
 unsigned char TEMP_TMIN_REG (size_t) ;

 int adt7475_read (unsigned char) ;
 int adt7475_read_hystersis (struct i2c_client*) ;
 long clamp_val (long,int,int) ;
 struct adt7475_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,unsigned char,long) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reg2temp (struct adt7475_data*,int) ;
 long temp2reg (struct adt7475_data*,long) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_store(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 struct adt7475_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 unsigned char reg = 0;
 u8 out;
 int temp;
 long val;

 if (kstrtol(buf, 10, &val))
  return -EINVAL;

 mutex_lock(&data->lock);


 data->config5 = adt7475_read(REG_CONFIG5);

 switch (sattr->nr) {
 case 129:
  if (data->config5 & CONFIG5_TEMPOFFSET) {
   val = clamp_val(val, -63000, 127000);
   out = data->temp[129][sattr->index] = val / 1000;
  } else {
   val = clamp_val(val, -63000, 64000);
   out = data->temp[129][sattr->index] = val / 500;
  }
  break;

 case 132:






  data->temp[128][sattr->index] =
   adt7475_read(TEMP_THERM_REG(sattr->index)) << 2;
  adt7475_read_hystersis(client);

  temp = reg2temp(data, data->temp[128][sattr->index]);
  val = clamp_val(val, temp - 15000, temp);
  val = (temp - val) / 1000;

  if (sattr->index != 1) {
   data->temp[132][sattr->index] &= 0xF0;
   data->temp[132][sattr->index] |= (val & 0xF) << 4;
  } else {
   data->temp[132][sattr->index] &= 0x0F;
   data->temp[132][sattr->index] |= (val & 0xF);
  }

  out = data->temp[132][sattr->index];
  break;

 default:
  data->temp[sattr->nr][sattr->index] = temp2reg(data, val);





  out = (u8) (data->temp[sattr->nr][sattr->index] >> 2);
 }

 switch (sattr->nr) {
 case 130:
  reg = TEMP_MIN_REG(sattr->index);
  break;
 case 131:
  reg = TEMP_MAX_REG(sattr->index);
  break;
 case 129:
  reg = TEMP_OFFSET_REG(sattr->index);
  break;
 case 133:
  reg = TEMP_TMIN_REG(sattr->index);
  break;
 case 128:
  reg = TEMP_THERM_REG(sattr->index);
  break;
 case 132:
  if (sattr->index != 2)
   reg = REG_REMOTE1_HYSTERSIS;
  else
   reg = REG_REMOTE2_HYSTERSIS;

  break;
 }

 i2c_smbus_write_byte_data(client, reg, out);

 mutex_unlock(&data->lock);
 return count;
}
