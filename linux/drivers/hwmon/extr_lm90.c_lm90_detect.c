
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; int flags; } ;
struct i2c_adapter {int dev; } ;


 int ENODEV ;
 int I2C_CLIENT_PEC ;
 int I2C_FUNC_SMBUS_BYTE ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int LM90_REG_R_CHIP_ID ;
 int LM90_REG_R_CONFIG1 ;
 int LM90_REG_R_CONFIG2 ;
 int LM90_REG_R_CONVRATE ;
 int LM90_REG_R_MAN_ID ;
 int MAX6659_REG_R_REMOTE_EMERG ;
 int MAX6696_REG_R_STATUS2 ;
 int TMP451_REG_R_LOCAL_TEMPL ;
 int dev_dbg (int *,char*,int,int,int) ;
 int dev_info (int *,char*,...) ;
 scalar_t__ i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static int lm90_detect(struct i2c_client *client,
         struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 int address = client->addr;
 const char *name = ((void*)0);
 int man_id, chip_id, config1, config2, convrate;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;


 man_id = i2c_smbus_read_byte_data(client, LM90_REG_R_MAN_ID);
 chip_id = i2c_smbus_read_byte_data(client, LM90_REG_R_CHIP_ID);
 config1 = i2c_smbus_read_byte_data(client, LM90_REG_R_CONFIG1);
 convrate = i2c_smbus_read_byte_data(client, LM90_REG_R_CONVRATE);
 if (man_id < 0 || chip_id < 0 || config1 < 0 || convrate < 0)
  return -ENODEV;

 if (man_id == 0x01 || man_id == 0x5C || man_id == 0x41) {
  config2 = i2c_smbus_read_byte_data(client, LM90_REG_R_CONFIG2);
  if (config2 < 0)
   return -ENODEV;
 } else
  config2 = 0;

 if ((address == 0x4C || address == 0x4D)
  && man_id == 0x01) {
  if ((config1 & 0x2A) == 0x00
   && (config2 & 0xF8) == 0x00
   && convrate <= 0x09) {
   if (address == 0x4C
    && (chip_id & 0xF0) == 0x20) {
    name = "lm90";
   } else
   if ((chip_id & 0xF0) == 0x30) {
    name = "lm99";
    dev_info(&adapter->dev,
      "Assuming LM99 chip at 0x%02x\n",
      address);
    dev_info(&adapter->dev,
      "If it is an LM89, instantiate it "
      "with the new_device sysfs "
      "interface\n");
   } else
   if (address == 0x4C
    && (chip_id & 0xF0) == 0x10) {
    name = "lm86";
   }
  }
 } else
 if ((address == 0x4C || address == 0x4D)
  && man_id == 0x41) {
  if ((chip_id & 0xF0) == 0x40
   && (config1 & 0x3F) == 0x00
   && convrate <= 0x0A) {
   name = "adm1032";




   if (i2c_check_functionality(adapter,
          I2C_FUNC_SMBUS_BYTE))
    info->flags |= I2C_CLIENT_PEC;
  } else
  if (chip_id == 0x51
   && (config1 & 0x1B) == 0x00
   && convrate <= 0x0A) {
   name = "adt7461";
  } else
  if (chip_id == 0x57
   && (config1 & 0x1B) == 0x00
   && convrate <= 0x0A) {
   name = "adt7461a";
  }
 } else
 if (man_id == 0x4D) {
  int emerg, emerg2, status2;







  emerg = i2c_smbus_read_byte_data(client,
       MAX6659_REG_R_REMOTE_EMERG);
  man_id = i2c_smbus_read_byte_data(client,
        LM90_REG_R_MAN_ID);
  emerg2 = i2c_smbus_read_byte_data(client,
        MAX6659_REG_R_REMOTE_EMERG);
  status2 = i2c_smbus_read_byte_data(client,
         MAX6696_REG_R_STATUS2);
  if (emerg < 0 || man_id < 0 || emerg2 < 0 || status2 < 0)
   return -ENODEV;
  if (chip_id == man_id
   && (address == 0x4C || address == 0x4D || address == 0x4E)
   && (config1 & 0x1F) == (man_id & 0x0F)
   && convrate <= 0x09) {
   if (address == 0x4C)
    name = "max6657";
   else
    name = "max6659";
  } else
  if (chip_id == 0x01
   && (config1 & 0x10) == 0x00
   && (status2 & 0x01) == 0x00
   && emerg == emerg2
   && convrate <= 0x07) {
   name = "max6696";
  } else






  if (chip_id == 0x01
   && (config1 & 0x03) == 0x00
   && convrate <= 0x07) {
   name = "max6680";
  } else





  if (chip_id == 0x59
   && (config1 & 0x3f) == 0x00
   && convrate <= 0x07) {
   name = "max6646";
  }
 } else
 if (address == 0x4C
  && man_id == 0x5C) {
  if ((config1 & 0x2A) == 0x00
   && (config2 & 0xF8) == 0x00) {
   if (chip_id == 0x01
    && convrate <= 0x09) {
    name = "w83l771";
   } else
   if ((chip_id & 0xFE) == 0x10
    && convrate <= 0x08) {
    name = "w83l771";
   }
  }
 } else
 if (address >= 0x48 && address <= 0x4F
  && man_id == 0xA1) {
  if (chip_id == 0x00
   && (config1 & 0x2A) == 0x00
   && (config2 & 0xFE) == 0x00
   && convrate <= 0x09) {
   name = "sa56004";
  }
 } else
 if ((address == 0x4C || address == 0x4D)
  && man_id == 0x47) {
  if (chip_id == 0x01
   && (config1 & 0x3F) == 0x00
   && convrate <= 0x08)
   name = "g781";
 } else
 if (address == 0x4C
  && man_id == 0x55) {
  int local_ext;

  local_ext = i2c_smbus_read_byte_data(client,
           TMP451_REG_R_LOCAL_TEMPL);

  if (chip_id == 0x00
   && (config1 & 0x1B) == 0x00
   && convrate <= 0x09
   && (local_ext & 0x0F) == 0x00)
   name = "tmp451";
 }

 if (!name) {
  dev_dbg(&adapter->dev,
   "Unsupported chip at 0x%02x (man_id=0x%02X, "
   "chip_id=0x%02X)\n", address, man_id, chip_id);
  return -ENODEV;
 }

 strlcpy(info->type, name, I2C_NAME_SIZE);

 return 0;
}
