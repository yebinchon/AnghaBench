
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct lm63_data {int config; int config_fan; int kind; int pwm1_freq; int lut_size; int trutherm; int lut_temp_highres; int pwm_highres; int remote_unsigned; int max_convrate_hz; int update_interval; struct i2c_client* client; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;


 scalar_t__ LM63_MAX_CONVRATE ;
 int LM63_MAX_CONVRATE_HZ ;
 int LM63_REG_CONFIG1 ;
 int LM63_REG_CONFIG_FAN ;
 int LM63_REG_CONVRATE ;
 int LM63_REG_PWM_FREQ ;
 int LM96163_MAX_CONVRATE_HZ ;
 int LM96163_REG_CONFIG_ENHANCED ;
 int LM96163_REG_TRUTHERM ;
 int UPDATE_INTERVAL (int ,scalar_t__) ;
 int dev_dbg (struct device*,char*,...) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;



 scalar_t__ unlikely (int) ;

__attribute__((used)) static void lm63_init_client(struct lm63_data *data)
{
 struct i2c_client *client = data->client;
 struct device *dev = &client->dev;
 u8 convrate;

 data->config = i2c_smbus_read_byte_data(client, LM63_REG_CONFIG1);
 data->config_fan = i2c_smbus_read_byte_data(client,
          LM63_REG_CONFIG_FAN);


 if (data->config & 0x40) {
  dev_dbg(dev, "Switching to operational mode\n");
  data->config &= 0xA7;
  i2c_smbus_write_byte_data(client, LM63_REG_CONFIG1,
       data->config);
 }

 if (data->kind == 129)
  data->config |= 0x04;


 data->pwm1_freq = i2c_smbus_read_byte_data(client, LM63_REG_PWM_FREQ);
 if (data->pwm1_freq == 0)
  data->pwm1_freq = 1;

 switch (data->kind) {
 case 130:
 case 129:
  data->max_convrate_hz = LM63_MAX_CONVRATE_HZ;
  data->lut_size = 8;
  break;
 case 128:
  data->max_convrate_hz = LM96163_MAX_CONVRATE_HZ;
  data->lut_size = 12;
  data->trutherm
    = i2c_smbus_read_byte_data(client,
          LM96163_REG_TRUTHERM) & 0x02;
  break;
 }
 convrate = i2c_smbus_read_byte_data(client, LM63_REG_CONVRATE);
 if (unlikely(convrate > LM63_MAX_CONVRATE))
  convrate = LM63_MAX_CONVRATE;
 data->update_interval = UPDATE_INTERVAL(data->max_convrate_hz,
      convrate);





 if (data->kind == 128) {
  u8 config_enhanced
    = i2c_smbus_read_byte_data(client,
          LM96163_REG_CONFIG_ENHANCED);
  if (config_enhanced & 0x20)
   data->lut_temp_highres = 1;
  if ((config_enhanced & 0x10)
      && !(data->config_fan & 0x08) && data->pwm1_freq == 8)
   data->pwm_highres = 1;
  if (config_enhanced & 0x08)
   data->remote_unsigned = 1;
 }


 if (data->kind == 130)
  dev_dbg(dev, "Alert/tach pin configured for %s\n",
   (data->config & 0x04) ? "tachometer input" :
   "alert output");
 dev_dbg(dev, "PWM clock %s kHz, output frequency %u Hz\n",
  (data->config_fan & 0x08) ? "1.4" : "360",
  ((data->config_fan & 0x08) ? 700 : 180000) / data->pwm1_freq);
 dev_dbg(dev, "PWM output active %s, %s mode\n",
  (data->config_fan & 0x10) ? "low" : "high",
  (data->config_fan & 0x20) ? "manual" : "auto");
}
