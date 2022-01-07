
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int percent ;
 int pmbus_get_fan_rate_device (struct i2c_client*,int,int ,int ) ;

__attribute__((used)) static int max31785_get_pwm(struct i2c_client *client, int page)
{
 int rv;

 rv = pmbus_get_fan_rate_device(client, page, 0, percent);
 if (rv < 0)
  return rv;
 else if (rv >= 0x8000)
  return 0;
 else if (rv >= 0x2711)
  return 0x2710;

 return rv;
}
