
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct i2c_board_info {int type; } ;


 int ENODEV ;
 int I2C_NAME_SIZE ;
 int THERMAL_PID_REG ;
 int THERMAL_REVISION_REG ;
 int THERMAL_SMSC_ID_REG ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int emc1403_detect(struct i2c_client *client,
   struct i2c_board_info *info)
{
 int id;


 id = i2c_smbus_read_byte_data(client, THERMAL_SMSC_ID_REG);
 if (id != 0x5d)
  return -ENODEV;

 id = i2c_smbus_read_byte_data(client, THERMAL_PID_REG);
 switch (id) {
 case 0x20:
  strlcpy(info->type, "emc1402", I2C_NAME_SIZE);
  break;
 case 0x21:
  strlcpy(info->type, "emc1403", I2C_NAME_SIZE);
  break;
 case 0x22:
  strlcpy(info->type, "emc1422", I2C_NAME_SIZE);
  break;
 case 0x23:
  strlcpy(info->type, "emc1423", I2C_NAME_SIZE);
  break;
 case 0x25:
  strlcpy(info->type, "emc1404", I2C_NAME_SIZE);
  break;
 case 0x27:
  strlcpy(info->type, "emc1424", I2C_NAME_SIZE);
  break;
 default:
  return -ENODEV;
 }

 id = i2c_smbus_read_byte_data(client, THERMAL_REVISION_REG);
 if (id < 0x01 || id > 0x04)
  return -ENODEV;

 return 0;
}
