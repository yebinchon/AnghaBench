
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max44009_data {struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
typedef int s64 ;


 int ARRAY_SIZE (int ) ;
 int MAX44009_CFG_MAN_MODE_MASK ;
 int MAX44009_REG_CFG ;
 int NSEC_PER_SEC ;
 int find_closest_descending (int,int ,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int max44009_int_time_ns_array ;

__attribute__((used)) static int max44009_write_int_time(struct max44009_data *data,
       int val, int val2)
{
 struct i2c_client *client = data->client;
 int ret, int_time, config;
 s64 ns;

 ns = val * NSEC_PER_SEC + val2;
 int_time = find_closest_descending(
   ns,
   max44009_int_time_ns_array,
   ARRAY_SIZE(max44009_int_time_ns_array));

 ret = i2c_smbus_read_byte_data(client, MAX44009_REG_CFG);
 if (ret < 0)
  return ret;

 config = ret;
 config &= int_time;





 config |= MAX44009_CFG_MAN_MODE_MASK;

 return i2c_smbus_write_byte_data(client, MAX44009_REG_CFG, config);
}
