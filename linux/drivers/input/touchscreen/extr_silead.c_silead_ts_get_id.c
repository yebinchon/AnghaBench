
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct silead_ts_data {int chip_id; } ;
struct i2c_client {int dev; } ;
typedef int chip_id ;
typedef int __le32 ;


 int SILEAD_REG_ID ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,int ) ;
 struct silead_ts_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_i2c_block_data (struct i2c_client*,int ,int,int *) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int silead_ts_get_id(struct i2c_client *client)
{
 struct silead_ts_data *data = i2c_get_clientdata(client);
 __le32 chip_id;
 int error;

 error = i2c_smbus_read_i2c_block_data(client, SILEAD_REG_ID,
           sizeof(chip_id), (u8 *)&chip_id);
 if (error < 0) {
  dev_err(&client->dev, "Chip ID read error %d\n", error);
  return error;
 }

 data->chip_id = le32_to_cpu(chip_id);
 dev_info(&client->dev, "Silead chip ID: 0x%8X", data->chip_id);

 return 0;
}
