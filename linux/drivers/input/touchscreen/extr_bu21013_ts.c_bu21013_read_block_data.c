
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bu21013_ts {int client; } ;


 int BU21013_SENSORS_BTN_0_7_REG ;
 int EINVAL ;
 int I2C_RETRY_COUNT ;
 int LENGTH_OF_BUFFER ;
 int i2c_smbus_read_i2c_block_data (int ,int ,int,int *) ;

__attribute__((used)) static int bu21013_read_block_data(struct bu21013_ts *ts, u8 *buf)
{
 int ret, i;

 for (i = 0; i < I2C_RETRY_COUNT; i++) {
  ret = i2c_smbus_read_i2c_block_data(ts->client,
          BU21013_SENSORS_BTN_0_7_REG,
          LENGTH_OF_BUFFER, buf);
  if (ret == LENGTH_OF_BUFFER)
   return 0;
 }

 return -EINVAL;
}
