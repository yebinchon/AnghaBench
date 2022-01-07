
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max31790_data {int* fan_config; int* fan_dynamics; } ;
struct i2c_client {int dummy; } ;


 int MAX31790_REG_FAN_CONFIG (int) ;
 int MAX31790_REG_FAN_DYNAMICS (int) ;
 int NR_CHANNEL ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;

__attribute__((used)) static int max31790_init_client(struct i2c_client *client,
    struct max31790_data *data)
{
 int i, rv;

 for (i = 0; i < NR_CHANNEL; i++) {
  rv = i2c_smbus_read_byte_data(client,
    MAX31790_REG_FAN_CONFIG(i));
  if (rv < 0)
   return rv;
  data->fan_config[i] = rv;

  rv = i2c_smbus_read_byte_data(client,
    MAX31790_REG_FAN_DYNAMICS(i));
  if (rv < 0)
   return rv;
  data->fan_dynamics[i] = rv;
 }

 return 0;
}
