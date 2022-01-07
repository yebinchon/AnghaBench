
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adm1031_data {int conf1; scalar_t__* pwm; int * auto_temp; int * temp; int chip_type; } ;


 int ADM1031_CONF1_AUTO_MODE ;
 int AUTO_TEMP_MIN_FROM_REG_DEG (int ) ;
 int adm1031 ;

__attribute__((used)) static int trust_fan_readings(struct adm1031_data *data, int chan)
{
 int res = 0;

 if (data->conf1 & ADM1031_CONF1_AUTO_MODE) {
  switch (data->conf1 & 0x60) {
  case 0x00:




   res = data->temp[chan+1] >=
       AUTO_TEMP_MIN_FROM_REG_DEG(data->auto_temp[chan+1]);
   break;
  case 0x20:
   res =
       data->temp[1] >=
       AUTO_TEMP_MIN_FROM_REG_DEG(data->auto_temp[1]);
   break;
  case 0x40:
   res =
       data->temp[2] >=
       AUTO_TEMP_MIN_FROM_REG_DEG(data->auto_temp[2]);
   break;
  case 0x60:
   res =
       data->temp[0] >=
       AUTO_TEMP_MIN_FROM_REG_DEG(data->auto_temp[0])
       || data->temp[1] >=
       AUTO_TEMP_MIN_FROM_REG_DEG(data->auto_temp[1])
       || (data->chip_type == adm1031
    && data->temp[2] >=
    AUTO_TEMP_MIN_FROM_REG_DEG(data->auto_temp[2]));
   break;
  }
 } else {
  res = data->pwm[chan] > 0;
 }
 return res;
}
