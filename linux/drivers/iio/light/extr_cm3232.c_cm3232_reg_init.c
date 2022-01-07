
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dev; } ;
struct cm3232_chip {int regs_cmd; struct i2c_client* client; TYPE_1__* als_info; } ;
typedef int s32 ;
struct TYPE_2__ {int hw_id; int regs_cmd_default; } ;


 int CM3232_CMD_ALS_DISABLE ;
 int CM3232_CMD_ALS_RESET ;
 int CM3232_REG_ADDR_CMD ;
 int CM3232_REG_ADDR_ID ;
 int ENODEV ;
 TYPE_1__ cm3232_als_info_default ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_word_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static int cm3232_reg_init(struct cm3232_chip *chip)
{
 struct i2c_client *client = chip->client;
 s32 ret;

 chip->als_info = &cm3232_als_info_default;


 ret = i2c_smbus_read_word_data(client, CM3232_REG_ADDR_ID);
 if (ret < 0) {
  dev_err(&chip->client->dev, "Error reading addr_id\n");
  return ret;
 }

 if ((ret & 0xFF) != chip->als_info->hw_id)
  return -ENODEV;


 chip->regs_cmd = CM3232_CMD_ALS_DISABLE | CM3232_CMD_ALS_RESET;
 ret = i2c_smbus_write_byte_data(client, CM3232_REG_ADDR_CMD,
     chip->regs_cmd);
 if (ret < 0) {
  dev_err(&chip->client->dev, "Error writing reg_cmd\n");
  return ret;
 }


 chip->regs_cmd = chip->als_info->regs_cmd_default;


 ret = i2c_smbus_write_byte_data(client, CM3232_REG_ADDR_CMD,
     chip->regs_cmd);
 if (ret < 0)
  dev_err(&chip->client->dev, "Error writing reg_cmd\n");

 return ret;
}
