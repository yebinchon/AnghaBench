
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct adm1031_data {scalar_t__ chip_type; int update_interval; } ;


 unsigned int ADM1031_CONF1_MONITOR_ENABLE ;
 unsigned int ADM1031_CONF2_PWM1_ENABLE ;
 unsigned int ADM1031_CONF2_PWM2_ENABLE ;
 unsigned int ADM1031_CONF2_TACH1_ENABLE ;
 unsigned int ADM1031_CONF2_TACH2_ENABLE ;
 int ADM1031_REG_CONF1 ;
 int ADM1031_REG_CONF2 ;
 int ADM1031_REG_FAN_FILTER ;
 unsigned int ADM1031_UPDATE_RATE_MASK ;
 unsigned int ADM1031_UPDATE_RATE_SHIFT ;
 scalar_t__ adm1031 ;
 unsigned int adm1031_read_value (struct i2c_client*,int ) ;
 int adm1031_write_value (struct i2c_client*,int ,unsigned int) ;
 struct adm1031_data* i2c_get_clientdata (struct i2c_client*) ;
 int * update_intervals ;

__attribute__((used)) static void adm1031_init_client(struct i2c_client *client)
{
 unsigned int read_val;
 unsigned int mask;
 int i;
 struct adm1031_data *data = i2c_get_clientdata(client);

 mask = (ADM1031_CONF2_PWM1_ENABLE | ADM1031_CONF2_TACH1_ENABLE);
 if (data->chip_type == adm1031) {
  mask |= (ADM1031_CONF2_PWM2_ENABLE |
   ADM1031_CONF2_TACH2_ENABLE);
 }

 read_val = adm1031_read_value(client, ADM1031_REG_CONF2);
 if ((read_val | mask) != read_val)
  adm1031_write_value(client, ADM1031_REG_CONF2, read_val | mask);

 read_val = adm1031_read_value(client, ADM1031_REG_CONF1);
 if ((read_val | ADM1031_CONF1_MONITOR_ENABLE) != read_val) {
  adm1031_write_value(client, ADM1031_REG_CONF1,
        read_val | ADM1031_CONF1_MONITOR_ENABLE);
 }


 mask = ADM1031_UPDATE_RATE_MASK;
 read_val = adm1031_read_value(client, ADM1031_REG_FAN_FILTER);
 i = (read_val & mask) >> ADM1031_UPDATE_RATE_SHIFT;

 data->update_interval = update_intervals[i];
}
