
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dev; } ;
struct TYPE_2__ {int auto_pwm_min; } ;
struct adm1026_data {int config1; int config2; int config3; int* gpio_config; int * fan_div; TYPE_1__ pwm1; } ;


 scalar_t__ ADM1026_REG_CONFIG1 ;
 scalar_t__ ADM1026_REG_CONFIG2 ;
 scalar_t__ ADM1026_REG_CONFIG3 ;
 scalar_t__ ADM1026_REG_FAN_DIV_0_3 ;
 scalar_t__ ADM1026_REG_FAN_DIV_4_7 ;
 scalar_t__ ADM1026_REG_GPIO_CFG_0_3 ;
 int CFG1_AIN8_9 ;
 int CFG1_INT_CLEAR ;
 int CFG1_INT_ENABLE ;
 int CFG1_MONITOR ;
 int CFG1_RESET ;
 int CFG1_THERM_HOT ;
 int CFG3_GPIO16_ENABLE ;
 int CFG3_VREF_250 ;
 int DIV_FROM_REG (int) ;
 int adm1026_fixup_gpio (struct i2c_client*) ;
 int adm1026_print_gpio (struct i2c_client*) ;
 int adm1026_read_value (struct i2c_client*,scalar_t__) ;
 int adm1026_write_value (struct i2c_client*,scalar_t__,int) ;
 int dev_dbg (int *,char*,...) ;
 int* gpio_fan ;
 int* gpio_input ;
 int* gpio_inverted ;
 int* gpio_normal ;
 int* gpio_output ;
 struct adm1026_data* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static void adm1026_init_client(struct i2c_client *client)
{
 int value, i;
 struct adm1026_data *data = i2c_get_clientdata(client);

 dev_dbg(&client->dev, "Initializing device\n");

 data->config1 = adm1026_read_value(client, ADM1026_REG_CONFIG1);
 data->config2 = adm1026_read_value(client, ADM1026_REG_CONFIG2);
 data->config3 = adm1026_read_value(client, ADM1026_REG_CONFIG3);


 dev_dbg(&client->dev, "ADM1026_REG_CONFIG1 is: 0x%02x\n",
  data->config1);
 if ((data->config1 & CFG1_MONITOR) == 0) {
  dev_dbg(&client->dev,
   "Monitoring not currently enabled.\n");
 }
 if (data->config1 & CFG1_INT_ENABLE) {
  dev_dbg(&client->dev,
   "SMBALERT interrupts are enabled.\n");
 }
 if (data->config1 & CFG1_AIN8_9) {
  dev_dbg(&client->dev,
   "in8 and in9 enabled. temp3 disabled.\n");
 } else {
  dev_dbg(&client->dev,
   "temp3 enabled.  in8 and in9 disabled.\n");
 }
 if (data->config1 & CFG1_THERM_HOT) {
  dev_dbg(&client->dev,
   "Automatic THERM, PWM, and temp limits enabled.\n");
 }

 if (data->config3 & CFG3_GPIO16_ENABLE) {
  dev_dbg(&client->dev,
   "GPIO16 enabled.  THERM pin disabled.\n");
 } else {
  dev_dbg(&client->dev,
   "THERM pin enabled.  GPIO16 disabled.\n");
 }
 if (data->config3 & CFG3_VREF_250)
  dev_dbg(&client->dev, "Vref is 2.50 Volts.\n");
 else
  dev_dbg(&client->dev, "Vref is 1.82 Volts.\n");

 value = 0;
 for (i = 0; i <= 15; ++i) {
  if ((i & 0x03) == 0) {
   value = adm1026_read_value(client,
     ADM1026_REG_GPIO_CFG_0_3 + i / 4);
  }
  data->gpio_config[i] = value & 0x03;
  value >>= 2;
 }
 data->gpio_config[16] = (data->config3 >> 6) & 0x03;


 adm1026_print_gpio(client);





 if (gpio_input[0] != -1 || gpio_output[0] != -1
  || gpio_inverted[0] != -1 || gpio_normal[0] != -1
  || gpio_fan[0] != -1) {
  adm1026_fixup_gpio(client);
 }
 data->pwm1.auto_pwm_min = 255;

 value = adm1026_read_value(client, ADM1026_REG_CONFIG1);

 value = (value | CFG1_MONITOR) & (~CFG1_INT_CLEAR & ~CFG1_RESET);
 dev_dbg(&client->dev, "Setting CONFIG to: 0x%02x\n", value);
 data->config1 = value;
 adm1026_write_value(client, ADM1026_REG_CONFIG1, value);


 value = adm1026_read_value(client, ADM1026_REG_FAN_DIV_0_3) |
  (adm1026_read_value(client, ADM1026_REG_FAN_DIV_4_7) << 8);
 for (i = 0; i <= 7; ++i) {
  data->fan_div[i] = DIV_FROM_REG(value & 0x03);
  value >>= 2;
 }
}
