
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pem_data {int valid; int input_length; int update_lock; scalar_t__ last_updated; int fan_speed; scalar_t__ fans_supported; int input_string; int data_string; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 struct pem_data* ERR_PTR (int) ;
 scalar_t__ HZ ;
 int PEM_CLEAR_INFO_FLAGS ;
 int PEM_READ_DATA_STRING ;
 int PEM_READ_FAN_SPEED ;
 int PEM_READ_INPUT_STRING ;
 struct pem_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte (struct i2c_client*,int ) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pem_read_block (struct i2c_client*,int ,int ,int) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct pem_data *pem_update_device(struct device *dev)
{
 struct pem_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 struct pem_data *ret = data;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ) || !data->valid) {
  int result;


  result = pem_read_block(client, PEM_READ_DATA_STRING,
     data->data_string,
     sizeof(data->data_string));
  if (unlikely(result < 0)) {
   ret = ERR_PTR(result);
   goto abort;
  }


  if (data->input_length) {
   result = pem_read_block(client, PEM_READ_INPUT_STRING,
      data->input_string,
      data->input_length);
   if (unlikely(result < 0)) {
    ret = ERR_PTR(result);
    goto abort;
   }
  }


  if (data->fans_supported) {
   result = pem_read_block(client, PEM_READ_FAN_SPEED,
      data->fan_speed,
      sizeof(data->fan_speed));
   if (unlikely(result < 0)) {
    ret = ERR_PTR(result);
    goto abort;
   }
  }

  i2c_smbus_write_byte(client, PEM_CLEAR_INFO_FLAGS);

  data->last_updated = jiffies;
  data->valid = 1;
 }
abort:
 mutex_unlock(&data->update_lock);
 return ret;
}
