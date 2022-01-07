
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int CCS811_MEAS_MODE ;
 int CCS811_MODE_IAQ_1SEC ;
 int ccs811_start_sensor_application (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int ccs811_setup(struct i2c_client *client)
{
 int ret;

 ret = ccs811_start_sensor_application(client);
 if (ret < 0)
  return ret;

 return i2c_smbus_write_byte_data(client, CCS811_MEAS_MODE,
      CCS811_MODE_IAQ_1SEC);
}
