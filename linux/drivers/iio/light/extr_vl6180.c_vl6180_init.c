
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vl6180_data {int als_it_ms; int als_gain_milli; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int ENODEV ;
 int VL6180_ALS_GAIN ;
 int VL6180_ALS_GAIN_1 ;
 int VL6180_ALS_IT ;
 int VL6180_ALS_IT_100 ;
 int VL6180_ALS_READY ;
 int VL6180_INTR_CONFIG ;
 int VL6180_MODEL_ID ;
 int VL6180_MODEL_ID_VAL ;
 int VL6180_OUT_OF_RESET ;
 int VL6180_RANGE_READY ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*) ;
 int vl6180_hold (struct vl6180_data*,int) ;
 int vl6180_read_byte (struct i2c_client*,int ) ;
 int vl6180_write_byte (struct i2c_client*,int ,int) ;
 int vl6180_write_word (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int vl6180_init(struct vl6180_data *data)
{
 struct i2c_client *client = data->client;
 int ret;

 ret = vl6180_read_byte(client, VL6180_MODEL_ID);
 if (ret < 0)
  return ret;

 if (ret != VL6180_MODEL_ID_VAL) {
  dev_err(&client->dev, "invalid model ID %02x\n", ret);
  return -ENODEV;
 }

 ret = vl6180_hold(data, 1);
 if (ret < 0)
  return ret;

 ret = vl6180_read_byte(client, VL6180_OUT_OF_RESET);
 if (ret < 0)
  return ret;





 if (ret != 0x01)
  dev_info(&client->dev, "device is not fresh out of reset\n");


 ret = vl6180_write_byte(client, VL6180_INTR_CONFIG,
    VL6180_ALS_READY | VL6180_RANGE_READY);
 if (ret < 0)
  return ret;


 data->als_it_ms = 100;
 ret = vl6180_write_word(client, VL6180_ALS_IT, VL6180_ALS_IT_100);
 if (ret < 0)
  return ret;


 data->als_gain_milli = 1000;
 ret = vl6180_write_byte(client, VL6180_ALS_GAIN, VL6180_ALS_GAIN_1);
 if (ret < 0)
  return ret;

 ret = vl6180_write_byte(client, VL6180_OUT_OF_RESET, 0x00);
 if (ret < 0)
  return ret;

 return vl6180_hold(data, 0);
}
