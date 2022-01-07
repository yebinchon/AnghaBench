
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dev; } ;
typedef int __be16 ;


 int ETP_I2C_IC_TYPE_CMD ;
 int ETP_I2C_NSM_VERSION_CMD ;
 int ETP_I2C_OSM_VERSION_CMD ;
 int be16_to_cpup (int *) ;
 int dev_err (int *,char*,...) ;
 int elan_i2c_get_pattern (struct i2c_client*,int*) ;
 int elan_i2c_read_cmd (struct i2c_client*,int ,int*) ;

__attribute__((used)) static int elan_i2c_get_sm_version(struct i2c_client *client,
       u16 *ic_type, u8 *version,
       u8 *clickpad)
{
 int error;
 u8 pattern_ver;
 u8 val[3];

 error = elan_i2c_get_pattern(client, &pattern_ver);
 if (error) {
  dev_err(&client->dev, "failed to get pattern version\n");
  return error;
 }

 if (pattern_ver == 0x01) {
  error = elan_i2c_read_cmd(client, ETP_I2C_IC_TYPE_CMD, val);
  if (error) {
   dev_err(&client->dev, "failed to get ic type: %d\n",
    error);
   return error;
  }
  *ic_type = be16_to_cpup((__be16 *)val);

  error = elan_i2c_read_cmd(client, ETP_I2C_NSM_VERSION_CMD,
       val);
  if (error) {
   dev_err(&client->dev, "failed to get SM version: %d\n",
    error);
   return error;
  }
  *version = val[1];
  *clickpad = val[0] & 0x10;
 } else {
  error = elan_i2c_read_cmd(client, ETP_I2C_OSM_VERSION_CMD, val);
  if (error) {
   dev_err(&client->dev, "failed to get SM version: %d\n",
    error);
   return error;
  }
  *version = val[0];
  *ic_type = val[1];

  error = elan_i2c_read_cmd(client, ETP_I2C_NSM_VERSION_CMD,
       val);
  if (error) {
   dev_err(&client->dev, "failed to get SM version: %d\n",
    error);
   return error;
  }
  *clickpad = val[0] & 0x10;
 }

 return 0;
}
