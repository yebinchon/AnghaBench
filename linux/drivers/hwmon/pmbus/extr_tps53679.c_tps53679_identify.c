
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pmbus_driver_info {int vrm_version; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int GENMASK (int,int ) ;
 int PMBUS_VOUT_MODE ;





 int pmbus_read_byte_data (struct i2c_client*,int ,int ) ;
 int vr12 ;
 int vr13 ;

__attribute__((used)) static int tps53679_identify(struct i2c_client *client,
        struct pmbus_driver_info *info)
{
 u8 vout_params;
 int ret;


 ret = pmbus_read_byte_data(client, 0, PMBUS_VOUT_MODE);
 if (ret < 0)
  return ret;

 vout_params = ret & GENMASK(4, 0);

 switch (vout_params) {
 case 129:
 case 130:
  info->vrm_version = vr13;
  break;
 case 128:
 case 131:
 case 132:
  info->vrm_version = vr12;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
