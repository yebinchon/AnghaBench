
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct vl53l0x_data {struct i2c_client* client; } ;
struct iio_chan_spec {int dummy; } ;
struct i2c_client {int dummy; } ;


 int EREMOTEIO ;
 int ETIMEDOUT ;
 int VL_REG_RESULT_RANGE_STATUS ;
 int VL_REG_RESULT_RANGE_STATUS_COMPLETE ;
 int VL_REG_SYSRANGE_START ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_read_i2c_block_data (struct i2c_client*,int ,int,int*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int vl53l0x_read_proximity(struct vl53l0x_data *data,
      const struct iio_chan_spec *chan,
      int *val)
{
 struct i2c_client *client = data->client;
 u16 tries = 20;
 u8 buffer[12];
 int ret;

 ret = i2c_smbus_write_byte_data(client, VL_REG_SYSRANGE_START, 1);
 if (ret < 0)
  return ret;

 do {
  ret = i2c_smbus_read_byte_data(client,
            VL_REG_RESULT_RANGE_STATUS);
  if (ret < 0)
   return ret;

  if (ret & VL_REG_RESULT_RANGE_STATUS_COMPLETE)
   break;

  usleep_range(1000, 5000);
 } while (--tries);
 if (!tries)
  return -ETIMEDOUT;

 ret = i2c_smbus_read_i2c_block_data(client, VL_REG_RESULT_RANGE_STATUS,
         12, buffer);
 if (ret < 0)
  return ret;
 else if (ret != 12)
  return -EREMOTEIO;


 *val = (buffer[10] << 8) + buffer[11];

 return 0;
}
