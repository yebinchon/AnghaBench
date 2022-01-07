
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_client {int dummy; } ;


 int ENODATA ;
 int ENOTSUPP ;
 int MAX31785_NR_PAGES ;




 int max31785_get_pwm (struct i2c_client*,int) ;
 int max31785_get_pwm_mode (struct i2c_client*,int) ;
 int max31785_read_long_data (struct i2c_client*,int ,int,int*) ;

__attribute__((used)) static int max31785_read_word_data(struct i2c_client *client, int page,
       int reg)
{
 u32 val;
 int rv;

 switch (reg) {
 case 130:
  if (page < MAX31785_NR_PAGES)
   return -ENODATA;

  rv = max31785_read_long_data(client, page - MAX31785_NR_PAGES,
          reg, &val);
  if (rv < 0)
   return rv;

  rv = (val >> 16) & 0xffff;
  break;
 case 131:






  rv = (page >= MAX31785_NR_PAGES) ? -ENOTSUPP : -ENODATA;
  break;
 case 129:
  rv = max31785_get_pwm(client, page);
  break;
 case 128:
  rv = max31785_get_pwm_mode(client, page);
  break;
 default:
  rv = -ENODATA;
  break;
 }

 return rv;
}
