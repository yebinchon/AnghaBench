
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max44009_data {int client; } ;


 int MAX44009_CFG_TIM_MASK ;
 int MAX44009_REG_CFG ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int* max44009_int_time_ns_array ;

__attribute__((used)) static int max44009_read_int_time(struct max44009_data *data)
{

 int ret = i2c_smbus_read_byte_data(data->client, MAX44009_REG_CFG);

 if (ret < 0)
  return ret;

 return max44009_int_time_ns_array[ret & MAX44009_CFG_TIM_MASK];
}
