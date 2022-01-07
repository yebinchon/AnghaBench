
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83791d_data {int* fan_min; int* fan_div; int update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DIV_FROM_REG (int) ;
 size_t EINVAL ;
 unsigned long FAN_FROM_REG (int,int ) ;
 int * W83791D_REG_FAN_DIV ;
 int * W83791D_REG_FAN_MIN ;
 int W83791D_REG_VBAT ;
 int dev_warn (struct device*,char*,int) ;
 int div_to_reg (int,unsigned long) ;
 int fan_to_reg (unsigned long,int ) ;
 struct w83791d_data* i2c_get_clientdata (struct i2c_client*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 int w83791d_read (struct i2c_client*,int ) ;
 int w83791d_write (struct i2c_client*,int ,int) ;

__attribute__((used)) static ssize_t store_fan_div(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 struct i2c_client *client = to_i2c_client(dev);
 struct w83791d_data *data = i2c_get_clientdata(client);
 int nr = sensor_attr->index;
 unsigned long min;
 u8 tmp_fan_div;
 u8 fan_div_reg;
 u8 vbat_reg;
 int indx = 0;
 u8 keep_mask = 0;
 u8 new_shift = 0;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;


 min = FAN_FROM_REG(data->fan_min[nr], DIV_FROM_REG(data->fan_div[nr]));

 mutex_lock(&data->update_lock);
 data->fan_div[nr] = div_to_reg(nr, val);

 switch (nr) {
 case 0:
  indx = 0;
  keep_mask = 0xcf;
  new_shift = 4;
  break;
 case 1:
  indx = 0;
  keep_mask = 0x3f;
  new_shift = 6;
  break;
 case 2:
  indx = 1;
  keep_mask = 0x3f;
  new_shift = 6;
  break;
 case 3:
  indx = 2;
  keep_mask = 0xf8;
  new_shift = 0;
  break;
 case 4:
  indx = 2;
  keep_mask = 0x8f;
  new_shift = 4;
  break;






 }

 fan_div_reg = w83791d_read(client, W83791D_REG_FAN_DIV[indx])
   & keep_mask;
 tmp_fan_div = (data->fan_div[nr] << new_shift) & ~keep_mask;

 w83791d_write(client, W83791D_REG_FAN_DIV[indx],
    fan_div_reg | tmp_fan_div);


 if (nr < 3) {
  keep_mask = ~(1 << (nr + 5));
  vbat_reg = w83791d_read(client, W83791D_REG_VBAT)
    & keep_mask;
  tmp_fan_div = (data->fan_div[nr] << (3 + nr)) & ~keep_mask;
  w83791d_write(client, W83791D_REG_VBAT,
    vbat_reg | tmp_fan_div);
 }


 data->fan_min[nr] = fan_to_reg(min, DIV_FROM_REG(data->fan_div[nr]));
 w83791d_write(client, W83791D_REG_FAN_MIN[nr], data->fan_min[nr]);




 mutex_unlock(&data->update_lock);

 return count;
}
