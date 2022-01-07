
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dev; } ;
typedef enum chips { ____Placeholder_chips } chips ;
struct TYPE_2__ {int name; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int TMP421_CONVERSION_RATE_REG ;

 int TMP421_DEVICE_ID_REG ;
 int TMP421_MANUFACTURER_ID ;
 int TMP421_MANUFACTURER_ID_REG ;
 int TMP421_STATUS_REG ;




 int dev_info (int *,char*,char const* const,int) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int strlcpy (int ,int ,int ) ;
 int tmp421 ;
 TYPE_1__* tmp421_id ;
 int tmp422 ;
 int tmp423 ;
 int tmp441 ;
 int tmp442 ;

__attribute__((used)) static int tmp421_detect(struct i2c_client *client,
    struct i2c_board_info *info)
{
 enum chips kind;
 struct i2c_adapter *adapter = client->adapter;
 static const char * const names[] = {
  "TMP421", "TMP422", "TMP423",
  "TMP441", "TMP442"
 };
 int addr = client->addr;
 u8 reg;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 reg = i2c_smbus_read_byte_data(client, TMP421_MANUFACTURER_ID_REG);
 if (reg != TMP421_MANUFACTURER_ID)
  return -ENODEV;

 reg = i2c_smbus_read_byte_data(client, TMP421_CONVERSION_RATE_REG);
 if (reg & 0xf8)
  return -ENODEV;

 reg = i2c_smbus_read_byte_data(client, TMP421_STATUS_REG);
 if (reg & 0x7f)
  return -ENODEV;

 reg = i2c_smbus_read_byte_data(client, TMP421_DEVICE_ID_REG);
 switch (reg) {
 case 132:
  kind = tmp421;
  break;
 case 131:
  if (addr == 0x2a)
   return -ENODEV;
  kind = tmp422;
  break;
 case 130:
  if (addr != 0x4c && addr != 0x4d)
   return -ENODEV;
  kind = tmp423;
  break;
 case 129:
  kind = tmp441;
  break;
 case 128:
  if (addr != 0x4c && addr != 0x4d)
   return -ENODEV;
  kind = tmp442;
  break;
 default:
  return -ENODEV;
 }

 strlcpy(info->type, tmp421_id[kind].name, I2C_NAME_SIZE);
 dev_info(&adapter->dev, "Detected TI %s chip at 0x%02x\n",
   names[kind], client->addr);

 return 0;
}
