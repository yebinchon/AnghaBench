
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dummy; } ;
typedef enum chips { ____Placeholder_chips } chips ;
struct TYPE_2__ {int name; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int TMP401_CONFIG_READ ;
 int TMP401_CONVERSION_RATE_READ ;

 int TMP401_DEVICE_ID_REG ;
 int TMP401_MANUFACTURER_ID ;
 int TMP401_MANUFACTURER_ID_REG ;






 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int strlcpy (int ,int ,int ) ;
 int tmp401 ;
 TYPE_1__* tmp401_id ;
 int tmp411 ;
 int tmp431 ;
 int tmp432 ;
 int tmp435 ;

__attribute__((used)) static int tmp401_detect(struct i2c_client *client,
    struct i2c_board_info *info)
{
 enum chips kind;
 struct i2c_adapter *adapter = client->adapter;
 u8 reg;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;


 reg = i2c_smbus_read_byte_data(client, TMP401_MANUFACTURER_ID_REG);
 if (reg != TMP401_MANUFACTURER_ID)
  return -ENODEV;

 reg = i2c_smbus_read_byte_data(client, TMP401_DEVICE_ID_REG);

 switch (reg) {
 case 134:
  if (client->addr != 0x4c)
   return -ENODEV;
  kind = tmp401;
  break;
 case 133:
  if (client->addr != 0x4c)
   return -ENODEV;
  kind = tmp411;
  break;
 case 132:
  if (client->addr != 0x4d)
   return -ENODEV;
  kind = tmp411;
  break;
 case 131:
  if (client->addr != 0x4e)
   return -ENODEV;
  kind = tmp411;
  break;
 case 130:
  if (client->addr != 0x4c && client->addr != 0x4d)
   return -ENODEV;
  kind = tmp431;
  break;
 case 129:
  if (client->addr != 0x4c && client->addr != 0x4d)
   return -ENODEV;
  kind = tmp432;
  break;
 case 128:
  kind = tmp435;
  break;
 default:
  return -ENODEV;
 }

 reg = i2c_smbus_read_byte_data(client, TMP401_CONFIG_READ);
 if (reg & 0x1b)
  return -ENODEV;

 reg = i2c_smbus_read_byte_data(client, TMP401_CONVERSION_RATE_READ);

 if (reg > 15)
  return -ENODEV;

 strlcpy(info->type, tmp401_id[kind].name, I2C_NAME_SIZE);

 return 0;
}
