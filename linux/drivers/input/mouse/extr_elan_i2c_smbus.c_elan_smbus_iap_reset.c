
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int ETP_SMBUS_IAP_RESET_CMD ;
 int dev_err (int *,char*,int) ;
 int i2c_smbus_write_byte (struct i2c_client*,int ) ;

__attribute__((used)) static int elan_smbus_iap_reset(struct i2c_client *client)
{
 int error;

 error = i2c_smbus_write_byte(client, ETP_SMBUS_IAP_RESET_CMD);
 if (error) {
  dev_err(&client->dev, "cannot reset IC: %d\n", error);
  return error;
 }

 return 0;
}
