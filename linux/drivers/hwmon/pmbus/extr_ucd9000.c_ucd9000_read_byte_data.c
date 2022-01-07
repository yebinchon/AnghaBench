
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int ENODATA ;
 int ENXIO ;


 int ucd9000_get_fan_config (struct i2c_client*,int) ;

__attribute__((used)) static int ucd9000_read_byte_data(struct i2c_client *client, int page, int reg)
{
 int ret = 0;
 int fan_config;

 switch (reg) {
 case 129:
  if (page > 0)
   return -ENXIO;

  ret = ucd9000_get_fan_config(client, 0);
  if (ret < 0)
   return ret;
  fan_config = ret << 4;
  ret = ucd9000_get_fan_config(client, 1);
  if (ret < 0)
   return ret;
  fan_config |= ret;
  ret = fan_config;
  break;
 case 128:
  if (page > 0)
   return -ENXIO;

  ret = ucd9000_get_fan_config(client, 2);
  if (ret < 0)
   return ret;
  fan_config = ret << 4;
  ret = ucd9000_get_fan_config(client, 3);
  if (ret < 0)
   return ret;
  fan_config |= ret;
  ret = fan_config;
  break;
 default:
  ret = -ENODATA;
  break;
 }
 return ret;
}
