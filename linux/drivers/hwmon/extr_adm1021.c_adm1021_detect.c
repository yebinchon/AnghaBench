
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dummy; } ;
typedef scalar_t__ s8 ;


 int ADM1021_REG_CONFIG_R ;
 int ADM1021_REG_CONV_RATE_R ;
 int ADM1021_REG_DEV_ID ;
 int ADM1021_REG_MAN_ID ;
 int ADM1021_REG_STATUS ;
 int ADM1021_REG_TEMP (int) ;
 int ADM1021_REG_THYST_R (int) ;
 int ADM1021_REG_TOS_R (int) ;
 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int i2c_adapter_id (struct i2c_adapter*) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int pr_debug (char*,...) ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static int adm1021_detect(struct i2c_client *client,
     struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 const char *type_name;
 int conv_rate, status, config, man_id, dev_id;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
  pr_debug("detect failed, smbus byte data not supported!\n");
  return -ENODEV;
 }

 status = i2c_smbus_read_byte_data(client, ADM1021_REG_STATUS);
 conv_rate = i2c_smbus_read_byte_data(client,
          ADM1021_REG_CONV_RATE_R);
 config = i2c_smbus_read_byte_data(client, ADM1021_REG_CONFIG_R);


 if ((status & 0x03) || (config & 0x3F) || (conv_rate & 0xF8)) {
  pr_debug("detect failed, chip not detected!\n");
  return -ENODEV;
 }


 man_id = i2c_smbus_read_byte_data(client, ADM1021_REG_MAN_ID);
 dev_id = i2c_smbus_read_byte_data(client, ADM1021_REG_DEV_ID);

 if (man_id < 0 || dev_id < 0)
  return -ENODEV;

 if (man_id == 0x4d && dev_id == 0x01)
  type_name = "max1617a";
 else if (man_id == 0x41) {
  if ((dev_id & 0xF0) == 0x30)
   type_name = "adm1023";
  else if ((dev_id & 0xF0) == 0x00)
   type_name = "adm1021";
  else
   return -ENODEV;
 } else if (man_id == 0x49)
  type_name = "thmc10";
 else if (man_id == 0x23)
  type_name = "gl523sm";
 else if (man_id == 0x54)
  type_name = "mc1066";
 else {
  int lte, rte, lhi, rhi, llo, rlo;



  llo = i2c_smbus_read_byte_data(client, ADM1021_REG_THYST_R(0));
  rlo = i2c_smbus_read_byte_data(client, ADM1021_REG_THYST_R(1));


  if (llo < 0 || rlo < 0)
   return -ENODEV;

  lte = i2c_smbus_read_byte_data(client, ADM1021_REG_TEMP(0));
  rte = i2c_smbus_read_byte_data(client, ADM1021_REG_TEMP(1));
  lhi = i2c_smbus_read_byte_data(client, ADM1021_REG_TOS_R(0));
  rhi = i2c_smbus_read_byte_data(client, ADM1021_REG_TOS_R(1));





  if ((s8)lte < 0 || (s8)rte < 0 || (s8)lhi < 0 || (s8)rhi < 0)
   return -ENODEV;


  if (lte == rte && lte == lhi && lte == rhi && lte == llo
      && lte == rlo)
   return -ENODEV;





  if (conv_rate == 0x00
      && (config & 0x7F) == 0x00
      && (status & 0xAB) == 0x00) {
   type_name = "lm84";
  } else {

   if ((s8)llo > lhi || (s8)rlo > rhi)
    return -ENODEV;
   type_name = "max1617";
  }
 }

 pr_debug("Detected chip %s at adapter %d, address 0x%02x.\n",
   type_name, i2c_adapter_id(adapter), client->addr);
 strlcpy(info->type, type_name, I2C_NAME_SIZE);

 return 0;
}
