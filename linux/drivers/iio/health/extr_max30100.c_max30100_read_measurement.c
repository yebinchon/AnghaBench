
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max30100_data {int buffer; int client; } ;


 int MAX30100_REG_FIFO_DATA ;
 int MAX30100_REG_FIFO_DATA_ENTRY_LEN ;
 int i2c_smbus_read_i2c_block_data (int ,int ,int,int *) ;

__attribute__((used)) static int max30100_read_measurement(struct max30100_data *data)
{
 int ret;

 ret = i2c_smbus_read_i2c_block_data(data->client,
         MAX30100_REG_FIFO_DATA,
         MAX30100_REG_FIFO_DATA_ENTRY_LEN,
         (u8 *) &data->buffer);

 return (ret == MAX30100_REG_FIFO_DATA_ENTRY_LEN) ? 0 : ret;
}
