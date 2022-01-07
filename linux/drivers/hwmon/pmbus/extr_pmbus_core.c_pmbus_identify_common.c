
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmbus_data {int* exponent; TYPE_1__* info; } ;
struct i2c_client {int dummy; } ;
typedef int s8 ;
struct TYPE_2__ {int * format; } ;


 int ENODEV ;
 int PMBUS_VOUT_MODE ;
 size_t PSC_VOLTAGE_OUT ;
 int _pmbus_read_byte_data (struct i2c_client*,int,int ) ;
 int direct ;
 int linear ;
 scalar_t__ pmbus_check_byte_register (struct i2c_client*,int,int ) ;
 int pmbus_clear_fault_page (struct i2c_client*,int) ;
 int vid ;

__attribute__((used)) static int pmbus_identify_common(struct i2c_client *client,
     struct pmbus_data *data, int page)
{
 int vout_mode = -1;

 if (pmbus_check_byte_register(client, page, PMBUS_VOUT_MODE))
  vout_mode = _pmbus_read_byte_data(client, page,
        PMBUS_VOUT_MODE);
 if (vout_mode >= 0 && vout_mode != 0xff) {




  switch (vout_mode >> 5) {
  case 0:
   if (data->info->format[PSC_VOLTAGE_OUT] != linear)
    return -ENODEV;

   data->exponent[page] = ((s8)(vout_mode << 3)) >> 3;
   break;
  case 1:
   if (data->info->format[PSC_VOLTAGE_OUT] != vid)
    return -ENODEV;
   break;
  case 2:
   if (data->info->format[PSC_VOLTAGE_OUT] != direct)
    return -ENODEV;
   break;
  default:
   return -ENODEV;
  }
 }

 pmbus_clear_fault_page(client, page);
 return 0;
}
