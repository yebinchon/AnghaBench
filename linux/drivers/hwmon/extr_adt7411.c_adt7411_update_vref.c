
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct adt7411_data {int vref_cached; scalar_t__ next_update; struct i2c_client* client; } ;


 int ADT7411_CFG3_REF_VDD ;
 int ADT7411_REG_CFG3 ;
 scalar_t__ HZ ;
 int adt7411_read_in_vdd (struct device*,int ,int*) ;
 struct adt7411_data* dev_get_drvdata (struct device*) ;
 int hwmon_in_input ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 scalar_t__ jiffies ;
 scalar_t__ time_after_eq (scalar_t__,scalar_t__) ;

__attribute__((used)) static int adt7411_update_vref(struct device *dev)
{
 struct adt7411_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int val;

 if (time_after_eq(jiffies, data->next_update)) {
  val = i2c_smbus_read_byte_data(client, ADT7411_REG_CFG3);
  if (val < 0)
   return val;

  if (val & ADT7411_CFG3_REF_VDD) {
   val = adt7411_read_in_vdd(dev, hwmon_in_input,
        &data->vref_cached);
   if (val < 0)
    return val;
  } else {
   data->vref_cached = 2250;
  }

  data->next_update = jiffies + HZ;
 }

 return 0;
}
