
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pmbus_driver_info {int vrm_version; } ;
struct i2c_client {int dummy; } ;


 int ENODEV ;
 int GENMASK (int,int ) ;
 int PMBUS_VOUT_MODE ;
 scalar_t__ pmbus_check_byte_register (struct i2c_client*,int ,int ) ;
 int pmbus_read_byte_data (struct i2c_client*,int ,int ) ;
 int vr12 ;
 int vr13 ;

__attribute__((used)) static int pxe1610_identify(struct i2c_client *client,
        struct pmbus_driver_info *info)
{
 if (pmbus_check_byte_register(client, 0, PMBUS_VOUT_MODE)) {
  u8 vout_mode;
  int ret;


  ret = pmbus_read_byte_data(client, 0, PMBUS_VOUT_MODE);
  if (ret < 0)
   return ret;

  vout_mode = ret & GENMASK(4, 0);

  switch (vout_mode) {
  case 1:
   info->vrm_version = vr12;
   break;
  case 2:
   info->vrm_version = vr13;
   break;
  default:
   return -ENODEV;
  }
 }

 return 0;
}
