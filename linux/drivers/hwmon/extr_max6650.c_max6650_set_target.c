
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max6650_data {int speed; int client; int config; } ;


 int DIV_FROM_REG (int ) ;
 int FAN_RPM_MAX ;
 int FAN_RPM_MIN ;
 int MAX6650_CFG_MODE_OFF ;
 int MAX6650_REG_SPEED ;
 unsigned long clamp_val (unsigned long,int ,int ) ;
 int clock ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 int max6650_set_operating_mode (struct max6650_data*,int ) ;

__attribute__((used)) static int max6650_set_target(struct max6650_data *data, unsigned long rpm)
{
 int kscale, ktach;

 if (rpm == 0)
  return max6650_set_operating_mode(data, MAX6650_CFG_MODE_OFF);

 rpm = clamp_val(rpm, FAN_RPM_MIN, FAN_RPM_MAX);
 kscale = DIV_FROM_REG(data->config);
 ktach = ((clock * kscale) / (256 * rpm / 60)) - 1;
 if (ktach < 0)
  ktach = 0;
 if (ktach > 255)
  ktach = 255;
 data->speed = ktach;

 return i2c_smbus_write_byte_data(data->client, MAX6650_REG_SPEED,
      data->speed);
}
