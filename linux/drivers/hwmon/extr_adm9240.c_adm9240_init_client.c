
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;
struct adm9240_data {int vrm; } ;


 int ADM9240_REG_CONFIG ;
 int ADM9240_REG_FAN_MIN (int) ;
 int ADM9240_REG_IN_MAX (int) ;
 int ADM9240_REG_IN_MIN (int) ;
 int ADM9240_REG_TEMP_CONF ;
 int ADM9240_REG_TEMP_MAX (int) ;
 int dev_info (int *,char*,int,int) ;
 struct adm9240_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int vid_which_vrm () ;

__attribute__((used)) static void adm9240_init_client(struct i2c_client *client)
{
 struct adm9240_data *data = i2c_get_clientdata(client);
 u8 conf = i2c_smbus_read_byte_data(client, ADM9240_REG_CONFIG);
 u8 mode = i2c_smbus_read_byte_data(client, ADM9240_REG_TEMP_CONF) & 3;

 data->vrm = vid_which_vrm();

 dev_info(&client->dev, "Using VRM: %d.%d\n", data->vrm / 10,
   data->vrm % 10);

 if (conf & 1) {

  dev_info(&client->dev, "status: config 0x%02x mode %u\n",
    conf, mode);

 } else {
  int i;

  for (i = 0; i < 6; i++) {
   i2c_smbus_write_byte_data(client,
     ADM9240_REG_IN_MIN(i), 0);
   i2c_smbus_write_byte_data(client,
     ADM9240_REG_IN_MAX(i), 255);
  }
  i2c_smbus_write_byte_data(client,
    ADM9240_REG_FAN_MIN(0), 255);
  i2c_smbus_write_byte_data(client,
    ADM9240_REG_FAN_MIN(1), 255);
  i2c_smbus_write_byte_data(client,
    ADM9240_REG_TEMP_MAX(0), 127);
  i2c_smbus_write_byte_data(client,
    ADM9240_REG_TEMP_MAX(1), 127);


  i2c_smbus_write_byte_data(client, ADM9240_REG_CONFIG, 1);

  dev_info(&client->dev,
    "cold start: config was 0x%02x mode %u\n", conf, mode);
 }
}
