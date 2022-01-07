
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct i2c_client {int dev; } ;
typedef int status ;
typedef int __le32 ;


 int SILEAD_REG_STATUS ;
 int dev_err (int *,char*,int) ;
 int i2c_smbus_read_i2c_block_data (struct i2c_client*,int ,int,int *) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static u32 silead_ts_get_status(struct i2c_client *client)
{
 int error;
 __le32 status;

 error = i2c_smbus_read_i2c_block_data(client, SILEAD_REG_STATUS,
           sizeof(status), (u8 *)&status);
 if (error < 0) {
  dev_err(&client->dev, "Status read error %d\n", error);
  return error;
 }

 return le32_to_cpu(status);
}
