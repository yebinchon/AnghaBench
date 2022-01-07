
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int CONFIGURED_MSK ;
 int DEVICE_STATUS_REG ;
 int ERROR_MSK ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int synaptics_i2c_reset_config (struct i2c_client*) ;

__attribute__((used)) static int synaptics_i2c_check_error(struct i2c_client *client)
{
 int status, ret = 0;

 status = i2c_smbus_read_byte_data(client, DEVICE_STATUS_REG) &
  (CONFIGURED_MSK | ERROR_MSK);

 if (status != CONFIGURED_MSK)
  ret = synaptics_i2c_reset_config(client);

 return ret;
}
