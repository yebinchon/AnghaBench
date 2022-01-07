
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;
typedef int cmd ;


 int ETP_SMBUS_IAP_CMD ;
 int dev_err (int *,char*,int) ;
 int i2c_smbus_write_block_data (struct i2c_client*,int ,int,int*) ;

__attribute__((used)) static int elan_smbus_set_flash_key(struct i2c_client *client)
{
 int error;
 u8 cmd[4] = { 0x00, 0x0B, 0x00, 0x5A };

 error = i2c_smbus_write_block_data(client, ETP_SMBUS_IAP_CMD,
        sizeof(cmd), cmd);
 if (error) {
  dev_err(&client->dev, "cannot set flash key: %d\n", error);
  return error;
 }

 return 0;
}
