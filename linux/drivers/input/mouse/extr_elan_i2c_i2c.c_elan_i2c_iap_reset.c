
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;


 int ETP_I2C_IAP_RESET ;
 int ETP_I2C_IAP_RESET_CMD ;
 int dev_err (int *,char*,int) ;
 int elan_i2c_write_cmd (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int elan_i2c_iap_reset(struct i2c_client *client)
{
 int error;

 error = elan_i2c_write_cmd(client, ETP_I2C_IAP_RESET_CMD,
       ETP_I2C_IAP_RESET);
 if (error) {
  dev_err(&client->dev, "cannot reset IC: %d\n", error);
  return error;
 }

 return 0;
}
