
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm95234_data {int* tcrit1; int* tcrit2; int* toffset; int thyst; int sensor_type; int interval; } ;
struct i2c_client {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int LM95234_REG_CONVRATE ;
 int LM95234_REG_OFFSET (int) ;
 int LM95234_REG_REM_MODEL ;
 int LM95234_REG_TCRIT1 (int) ;
 int LM95234_REG_TCRIT2 (int) ;
 int LM95234_REG_TCRIT_HYST ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int msecs_to_jiffies (int ) ;
 int * update_intervals ;

__attribute__((used)) static int lm95234_fill_cache(struct lm95234_data *data,
         struct i2c_client *client)
{
 int i, ret;

 ret = i2c_smbus_read_byte_data(client, LM95234_REG_CONVRATE);
 if (ret < 0)
  return ret;

 data->interval = msecs_to_jiffies(update_intervals[ret & 0x03]);

 for (i = 0; i < ARRAY_SIZE(data->tcrit1); i++) {
  ret = i2c_smbus_read_byte_data(client, LM95234_REG_TCRIT1(i));
  if (ret < 0)
   return ret;
  data->tcrit1[i] = ret;
 }
 for (i = 0; i < ARRAY_SIZE(data->tcrit2); i++) {
  ret = i2c_smbus_read_byte_data(client, LM95234_REG_TCRIT2(i));
  if (ret < 0)
   return ret;
  data->tcrit2[i] = ret;
 }
 for (i = 0; i < ARRAY_SIZE(data->toffset); i++) {
  ret = i2c_smbus_read_byte_data(client, LM95234_REG_OFFSET(i));
  if (ret < 0)
   return ret;
  data->toffset[i] = ret;
 }

 ret = i2c_smbus_read_byte_data(client, LM95234_REG_TCRIT_HYST);
 if (ret < 0)
  return ret;
 data->thyst = ret;

 ret = i2c_smbus_read_byte_data(client, LM95234_REG_REM_MODEL);
 if (ret < 0)
  return ret;
 data->sensor_type = ret;

 return 0;
}
