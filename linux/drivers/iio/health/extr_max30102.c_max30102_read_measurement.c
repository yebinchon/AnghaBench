
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max30102_data {int client; int buffer; } ;


 int EINVAL ;
 int MAX30102_COPY_DATA (int) ;
 int MAX30102_REG_FIFO_DATA ;
 unsigned int MAX30102_REG_FIFO_DATA_BYTES ;
 int i2c_smbus_read_i2c_block_data (int ,int ,unsigned int,int *) ;

__attribute__((used)) static int max30102_read_measurement(struct max30102_data *data,
         unsigned int measurements)
{
 int ret;
 u8 *buffer = (u8 *) &data->buffer;

 ret = i2c_smbus_read_i2c_block_data(data->client,
         MAX30102_REG_FIFO_DATA,
         measurements *
         MAX30102_REG_FIFO_DATA_BYTES,
         buffer);

 switch (measurements) {
 case 3:
  MAX30102_COPY_DATA(2);

 case 2:
  MAX30102_COPY_DATA(1);

 case 1:
  MAX30102_COPY_DATA(0);
  break;
 default:
  return -EINVAL;
 }

 return (ret == measurements * MAX30102_REG_FIFO_DATA_BYTES) ?
        0 : -EINVAL;
}
