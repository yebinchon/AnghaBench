
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccs811_data {int buffer; int client; } ;


 int CCS811_ALG_RESULT_DATA ;
 int CCS811_STATUS ;
 int CCS811_STATUS_DATA_READY ;
 int EIO ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int i2c_smbus_read_i2c_block_data (int ,int ,int,char*) ;
 int msleep (int) ;

__attribute__((used)) static int ccs811_get_measurement(struct ccs811_data *data)
{
 int ret, tries = 11;


 while (tries-- > 0) {
  ret = i2c_smbus_read_byte_data(data->client, CCS811_STATUS);
  if (ret < 0)
   return ret;

  if ((ret & CCS811_STATUS_DATA_READY) || tries == 0)
   break;
  msleep(100);
 }
 if (!(ret & CCS811_STATUS_DATA_READY))
  return -EIO;

 return i2c_smbus_read_i2c_block_data(data->client,
         CCS811_ALG_RESULT_DATA, 8,
         (char *)&data->buffer);
}
