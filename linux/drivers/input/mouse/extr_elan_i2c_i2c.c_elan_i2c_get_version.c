
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int ETP_I2C_FW_VERSION_CMD ;
 int ETP_I2C_IAP_VERSION_CMD ;
 int dev_err (int *,char*,...) ;
 int elan_i2c_get_pattern (struct i2c_client*,int*) ;
 int elan_i2c_read_cmd (struct i2c_client*,int ,int*) ;

__attribute__((used)) static int elan_i2c_get_version(struct i2c_client *client,
    bool iap, u8 *version)
{
 int error;
 u8 pattern_ver;
 u8 val[3];

 error = elan_i2c_get_pattern(client, &pattern_ver);
 if (error) {
  dev_err(&client->dev, "failed to get pattern version\n");
  return error;
 }

 error = elan_i2c_read_cmd(client,
      iap ? ETP_I2C_IAP_VERSION_CMD :
     ETP_I2C_FW_VERSION_CMD,
      val);
 if (error) {
  dev_err(&client->dev, "failed to get %s version: %d\n",
   iap ? "IAP" : "FW", error);
  return error;
 }

 if (pattern_ver == 0x01)
  *version = iap ? val[1] : val[0];
 else
  *version = val[0];
 return 0;
}
