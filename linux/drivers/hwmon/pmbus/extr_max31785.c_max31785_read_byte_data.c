
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int ENODATA ;
 int ENOTSUPP ;
 int MAX31785_NR_PAGES ;


 int pmbus_read_byte_data (struct i2c_client*,int,int) ;

__attribute__((used)) static int max31785_read_byte_data(struct i2c_client *client, int page,
       int reg)
{
 if (page < MAX31785_NR_PAGES)
  return -ENODATA;

 switch (reg) {
 case 128:
  return -ENOTSUPP;
 case 129:
  return pmbus_read_byte_data(client, page - MAX31785_NR_PAGES,
         reg);
 }

 return -ENODATA;
}
