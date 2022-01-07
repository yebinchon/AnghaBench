
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int LM95234_REG_CONFIG ;
 int LM95234_REG_REM_MODEL ;
 int LM95234_REG_REM_MODEL_STS ;
 int dev_notice (int *,char*,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static int lm95234_init_client(struct i2c_client *client)
{
 int val, model;


 val = i2c_smbus_read_byte_data(client, LM95234_REG_CONFIG);
 if (val < 0)
  return val;
 if (val & 0x40)
  i2c_smbus_write_byte_data(client, LM95234_REG_CONFIG,
       val & ~0x40);


 val = i2c_smbus_read_byte_data(client, LM95234_REG_REM_MODEL_STS);
 if (val < 0)
  return val;
 model = i2c_smbus_read_byte_data(client, LM95234_REG_REM_MODEL);
 if (model < 0)
  return model;
 if (model & val) {
  dev_notice(&client->dev,
      "Fixing remote diode type misconfiguration (0x%x)\n",
      val);
  i2c_smbus_write_byte_data(client, LM95234_REG_REM_MODEL,
       model & ~val);
 }
 return 0;
}
