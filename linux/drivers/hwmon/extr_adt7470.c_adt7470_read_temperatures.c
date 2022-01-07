
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
struct adt7470_data {int num_temp_sensors; int temperatures_probed; void** temp; } ;


 int ADT7470_FAN_COUNT ;
 int ADT7470_PWM_AUTO_MASK ;
 int ADT7470_REG_CFG ;
 int ADT7470_REG_PWM (int) ;
 int ADT7470_REG_PWM_CFG (int) ;
 int ADT7470_TEMP_COUNT ;
 int ADT7470_TEMP_REG (int) ;
 int EAGAIN ;
 int TEMP_COLLECTION_TIME ;
 void* i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 unsigned long msleep_interruptible (int) ;
 int pr_err (char*) ;

__attribute__((used)) static int adt7470_read_temperatures(struct i2c_client *client,
         struct adt7470_data *data)
{
 unsigned long res;
 int i;
 u8 cfg, pwm[4], pwm_cfg[2];


 pwm_cfg[0] = i2c_smbus_read_byte_data(client, ADT7470_REG_PWM_CFG(0));
 pwm_cfg[1] = i2c_smbus_read_byte_data(client, ADT7470_REG_PWM_CFG(2));


 for (i = 0; i < ADT7470_FAN_COUNT; i++)
  pwm[i] = i2c_smbus_read_byte_data(client, ADT7470_REG_PWM(i));


 i2c_smbus_write_byte_data(client, ADT7470_REG_PWM_CFG(0),
  pwm_cfg[0] & ~(ADT7470_PWM_AUTO_MASK));
 i2c_smbus_write_byte_data(client, ADT7470_REG_PWM_CFG(2),
  pwm_cfg[1] & ~(ADT7470_PWM_AUTO_MASK));


 for (i = 0; i < ADT7470_FAN_COUNT; i++)
  i2c_smbus_write_byte_data(client, ADT7470_REG_PWM(i), pwm[i]);


 cfg = i2c_smbus_read_byte_data(client, ADT7470_REG_CFG);
 cfg |= 0x80;
 i2c_smbus_write_byte_data(client, ADT7470_REG_CFG, cfg);


 res = msleep_interruptible((data->num_temp_sensors >= 0 ?
        data->num_temp_sensors * 200 :
        TEMP_COLLECTION_TIME));


 cfg = i2c_smbus_read_byte_data(client, ADT7470_REG_CFG);
 cfg &= ~0x80;
 i2c_smbus_write_byte_data(client, ADT7470_REG_CFG, cfg);


 i2c_smbus_write_byte_data(client, ADT7470_REG_PWM_CFG(0), pwm_cfg[0]);
 i2c_smbus_write_byte_data(client, ADT7470_REG_PWM_CFG(2), pwm_cfg[1]);

 if (res) {
  pr_err("ha ha, interrupted\n");
  return -EAGAIN;
 }


 if (data->num_temp_sensors >= 0)
  return 0;

 for (i = 0; i < ADT7470_TEMP_COUNT; i++) {
  data->temp[i] = i2c_smbus_read_byte_data(client,
      ADT7470_TEMP_REG(i));
  if (data->temp[i])
   data->num_temp_sensors = i + 1;
 }
 data->temperatures_probed = 1;
 return 0;
}
