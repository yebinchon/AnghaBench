
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct adm1026_data {int* gpio_config; int config2; int config3; } ;


 scalar_t__ ADM1026_REG_CONFIG2 ;
 scalar_t__ ADM1026_REG_CONFIG3 ;
 scalar_t__ ADM1026_REG_GPIO_CFG_0_3 ;
 int adm1026_print_gpio (struct i2c_client*) ;
 int adm1026_write_value (struct i2c_client*,scalar_t__,int) ;
 int* gpio_fan ;
 int* gpio_input ;
 int* gpio_inverted ;
 int* gpio_normal ;
 int* gpio_output ;
 struct adm1026_data* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static void adm1026_fixup_gpio(struct i2c_client *client)
{
 struct adm1026_data *data = i2c_get_clientdata(client);
 int i;
 int value;
 for (i = 0; i <= 16; ++i) {
  if (gpio_output[i] >= 0 && gpio_output[i] <= 16)
   data->gpio_config[gpio_output[i]] |= 0x01;

  if (gpio_output[i] >= 0 && gpio_output[i] <= 7)
   data->config2 |= 1 << gpio_output[i];
 }


 for (i = 0; i <= 16; ++i) {
  if (gpio_input[i] >= 0 && gpio_input[i] <= 16)
   data->gpio_config[gpio_input[i]] &= ~0x01;

  if (gpio_input[i] >= 0 && gpio_input[i] <= 7)
   data->config2 |= 1 << gpio_input[i];
 }


 for (i = 0; i <= 16; ++i) {
  if (gpio_inverted[i] >= 0 && gpio_inverted[i] <= 16)
   data->gpio_config[gpio_inverted[i]] &= ~0x02;
 }


 for (i = 0; i <= 16; ++i) {
  if (gpio_normal[i] >= 0 && gpio_normal[i] <= 16)
   data->gpio_config[gpio_normal[i]] |= 0x02;
 }


 for (i = 0; i <= 7; ++i) {
  if (gpio_fan[i] >= 0 && gpio_fan[i] <= 7)
   data->config2 &= ~(1 << gpio_fan[i]);
 }


 adm1026_write_value(client, ADM1026_REG_CONFIG2, data->config2);
 data->config3 = (data->config3 & 0x3f)
   | ((data->gpio_config[16] & 0x03) << 6);
 adm1026_write_value(client, ADM1026_REG_CONFIG3, data->config3);
 for (i = 15, value = 0; i >= 0; --i) {
  value <<= 2;
  value |= data->gpio_config[i] & 0x03;
  if ((i & 0x03) == 0) {
   adm1026_write_value(client,
     ADM1026_REG_GPIO_CFG_0_3 + i/4,
     value);
   value = 0;
  }
 }


 adm1026_print_gpio(client);
}
