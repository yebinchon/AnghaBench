
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
typedef int cmd ;


 int ETP_SMBUS_IAP_CMD ;
 int i2c_smbus_write_block_data (struct i2c_client*,int ,int,int*) ;

__attribute__((used)) static int elan_smbus_calibrate(struct i2c_client *client)
{
 u8 cmd[4] = { 0x00, 0x08, 0x00, 0x01 };

 return i2c_smbus_write_block_data(client, ETP_SMBUS_IAP_CMD,
       sizeof(cmd), cmd);
}
