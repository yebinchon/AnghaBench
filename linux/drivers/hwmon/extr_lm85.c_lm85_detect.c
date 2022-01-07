
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dev; } ;


 int ENODEV ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int LM85_COMPANY_ANALOG_DEV ;
 int LM85_COMPANY_NATIONAL ;
 int LM85_COMPANY_SMSC ;
 int LM85_REG_COMPANY ;
 int LM85_REG_VERSTEP ;
 int dev_dbg (int *,char*,...) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int lm85_is_fake (struct i2c_client*) ;
 int lm85_read_value (struct i2c_client*,int ) ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static int lm85_detect(struct i2c_client *client, struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 int address = client->addr;
 const char *type_name = ((void*)0);
 int company, verstep;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {

  return -ENODEV;
 }


 company = lm85_read_value(client, LM85_REG_COMPANY);
 verstep = lm85_read_value(client, LM85_REG_VERSTEP);

 dev_dbg(&adapter->dev,
  "Detecting device at 0x%02x with COMPANY: 0x%02x and VERSTEP: 0x%02x\n",
  address, company, verstep);

 if (company == LM85_COMPANY_NATIONAL) {
  switch (verstep) {
  case 130:
   type_name = "lm85c";
   break;
  case 131:
   type_name = "lm85b";
   break;
  case 129:
  case 128:

   if (lm85_is_fake(client)) {
    dev_dbg(&adapter->dev,
     "Found Winbond WPCD377I, ignoring\n");
    return -ENODEV;
   }
   type_name = "lm96000";
   break;
  }
 } else if (company == LM85_COMPANY_ANALOG_DEV) {
  switch (verstep) {
  case 142:
   type_name = "adm1027";
   break;
  case 141:
  case 140:
   type_name = "adt7463";
   break;
  case 139:
  case 138:
   type_name = "adt7468";
   break;
  }
 } else if (company == LM85_COMPANY_SMSC) {
  switch (verstep) {
  case 137:
  case 136:

   type_name = "emc6d100";
   break;
  case 135:
   type_name = "emc6d102";
   break;
  case 133:
  case 132:
   type_name = "emc6d103";
   break;
  case 134:
   type_name = "emc6d103s";
   break;
  }
 }

 if (!type_name)
  return -ENODEV;

 strlcpy(info->type, type_name, I2C_NAME_SIZE);

 return 0;
}
