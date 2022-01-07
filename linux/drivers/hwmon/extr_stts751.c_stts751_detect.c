
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dev; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;


 int STTS751_REG_HLIM_L ;
 int STTS751_REG_LLIM_L ;
 int STTS751_REG_MAN_ID ;
 int STTS751_REG_PROD_ID ;
 int STTS751_REG_SMBUS_TO ;
 int STTS751_REG_TEMP_L ;
 int ST_MAN_ID ;
 int dev_dbg (int *,char*,char const*) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int strlcpy (int ,int ,int ) ;
 TYPE_1__* stts751_id ;

__attribute__((used)) static int stts751_detect(struct i2c_client *new_client,
     struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = new_client->adapter;
 const char *name;
 int tmp;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 tmp = i2c_smbus_read_byte_data(new_client, STTS751_REG_MAN_ID);
 if (tmp != ST_MAN_ID)
  return -ENODEV;


 tmp = i2c_smbus_read_byte_data(new_client, STTS751_REG_TEMP_L);
 if (tmp & 0xf)
  return -ENODEV;

 tmp = i2c_smbus_read_byte_data(new_client, STTS751_REG_HLIM_L);
 if (tmp & 0xf)
  return -ENODEV;

 tmp = i2c_smbus_read_byte_data(new_client, STTS751_REG_LLIM_L);
 if (tmp & 0xf)
  return -ENODEV;


 tmp = i2c_smbus_read_byte_data(new_client, STTS751_REG_SMBUS_TO);
 if (tmp & 0x7f)
  return -ENODEV;

 tmp = i2c_smbus_read_byte_data(new_client, STTS751_REG_PROD_ID);

 switch (tmp) {
 case 129:
  name = "STTS751-0";
  break;
 case 128:
  name = "STTS751-1";
  break;
 default:
  return -ENODEV;
 }
 dev_dbg(&new_client->dev, "Chip %s detected", name);

 strlcpy(info->type, stts751_id[0].name, I2C_NAME_SIZE);
 return 0;
}
