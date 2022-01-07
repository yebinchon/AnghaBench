
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcs3414_data {int control; int client; } ;


 int TCS3414_CONTROL ;
 int TCS3414_CONTROL_ADC_EN ;
 int TCS3414_CONTROL_POWER ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;

__attribute__((used)) static int tcs3414_powerdown(struct tcs3414_data *data)
{
 return i2c_smbus_write_byte_data(data->client, TCS3414_CONTROL,
  data->control & ~(TCS3414_CONTROL_POWER |
  TCS3414_CONTROL_ADC_EN));
}
