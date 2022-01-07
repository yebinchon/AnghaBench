
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int dev; } ;
struct TYPE_2__ {int company_id; int verstep_id; int name; int verstep_reg; int company_reg; } ;


 int ENODEV ;
 int FIRST_CHIP ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_NAME_SIZE ;
 int LAST_CHIP ;
 TYPE_1__* asc7621_chips ;
 int dev_info (int *,char*,int ,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int read_byte (struct i2c_client*,int ) ;
 int strlcpy (int ,int ,int ) ;
 int valid_address_for_chip (int,int ) ;

__attribute__((used)) static int asc7621_detect(struct i2c_client *client,
     struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;
 int company, verstep, chip_index;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 for (chip_index = FIRST_CHIP; chip_index <= LAST_CHIP; chip_index++) {

  if (!valid_address_for_chip(chip_index, client->addr))
   continue;

  company = read_byte(client,
   asc7621_chips[chip_index].company_reg);
  verstep = read_byte(client,
   asc7621_chips[chip_index].verstep_reg);

  if (company == asc7621_chips[chip_index].company_id &&
      verstep == asc7621_chips[chip_index].verstep_id) {
   strlcpy(info->type, asc7621_chips[chip_index].name,
    I2C_NAME_SIZE);

   dev_info(&adapter->dev, "Matched %s at 0x%02x\n",
     asc7621_chips[chip_index].name, client->addr);
   return 0;
  }
 }

 return -ENODEV;
}
