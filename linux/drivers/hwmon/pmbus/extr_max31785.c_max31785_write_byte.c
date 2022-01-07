
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int ENODATA ;
 int ENOTSUPP ;
 int MAX31785_NR_PAGES ;

__attribute__((used)) static int max31785_write_byte(struct i2c_client *client, int page, u8 value)
{
 if (page < MAX31785_NR_PAGES)
  return -ENODATA;

 return -ENOTSUPP;
}
