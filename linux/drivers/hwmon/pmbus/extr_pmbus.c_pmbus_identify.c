
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmbus_driver_info {int pages; scalar_t__* format; int vrm_version; } ;
struct i2c_client {int dummy; } ;


 int ENODEV ;
 int PMBUS_PAGE ;
 int PMBUS_PAGES ;
 int PMBUS_VOUT_MODE ;
 size_t PSC_VOLTAGE_OUT ;
 scalar_t__ direct ;
 scalar_t__ pmbus_check_byte_register (struct i2c_client*,int ,int ) ;
 int pmbus_clear_faults (struct i2c_client*) ;
 int pmbus_find_sensor_groups (struct i2c_client*,struct pmbus_driver_info*) ;
 int pmbus_read_byte_data (struct i2c_client*,int ,int ) ;
 scalar_t__ pmbus_set_page (struct i2c_client*,int) ;
 scalar_t__ vid ;
 int vr11 ;

__attribute__((used)) static int pmbus_identify(struct i2c_client *client,
     struct pmbus_driver_info *info)
{
 int ret = 0;

 if (!info->pages) {






  if (pmbus_check_byte_register(client, 0, PMBUS_PAGE)) {
   int page;

   for (page = 1; page < PMBUS_PAGES; page++) {
    if (pmbus_set_page(client, page) < 0)
     break;
   }
   pmbus_set_page(client, 0);
   info->pages = page;
  } else {
   info->pages = 1;
  }

  pmbus_clear_faults(client);
 }

 if (pmbus_check_byte_register(client, 0, PMBUS_VOUT_MODE)) {
  int vout_mode;

  vout_mode = pmbus_read_byte_data(client, 0, PMBUS_VOUT_MODE);
  if (vout_mode >= 0 && vout_mode != 0xff) {
   switch (vout_mode >> 5) {
   case 0:
    break;
   case 1:
    info->format[PSC_VOLTAGE_OUT] = vid;
    info->vrm_version = vr11;
    break;
   case 2:
    info->format[PSC_VOLTAGE_OUT] = direct;
    break;
   default:
    ret = -ENODEV;
    goto abort;
   }
  }
 }
 if (info->format[PSC_VOLTAGE_OUT] == direct) {
  ret = -ENODEV;
  goto abort;
 }


 pmbus_find_sensor_groups(client, info);
abort:
 return ret;
}
