
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
typedef enum tp_mode { ____Placeholder_tp_mode } tp_mode ;
typedef int __le16 ;


 int EIO ;
 int ETP_I2C_IAP_CMD ;
 int ETP_I2C_IAP_PASSWORD ;
 int IAP_MODE ;
 int MAIN_MODE ;
 int dev_err (struct device*,char*,int) ;
 int elan_i2c_iap_get_mode (struct i2c_client*,int*) ;
 int elan_i2c_iap_reset (struct i2c_client*) ;
 int elan_i2c_read_cmd (struct i2c_client*,int ,int *) ;
 int elan_i2c_set_flash_key (struct i2c_client*) ;
 int le16_to_cpup (int *) ;
 int msleep (int) ;

__attribute__((used)) static int elan_i2c_prepare_fw_update(struct i2c_client *client)
{
 struct device *dev = &client->dev;
 int error;
 enum tp_mode mode;
 u8 val[3];
 u16 password;


 error = elan_i2c_iap_get_mode(client, &mode);
 if (error)
  return error;

 if (mode == IAP_MODE) {

  error = elan_i2c_iap_reset(client);
  if (error)
   return error;

  msleep(30);
 }


 error = elan_i2c_set_flash_key(client);
 if (error)
  return error;


 msleep(mode == MAIN_MODE ? 100 : 30);


 error = elan_i2c_iap_get_mode(client, &mode);
 if (error)
  return error;

 if (mode == MAIN_MODE) {
  dev_err(dev, "wrong mode: %d\n", mode);
  return -EIO;
 }


 error = elan_i2c_set_flash_key(client);
 if (error)
  return error;


 msleep(30);


 error = elan_i2c_read_cmd(client, ETP_I2C_IAP_CMD, val);
 if (error) {
  dev_err(dev, "cannot read iap password: %d\n",
   error);
  return error;
 }

 password = le16_to_cpup((__le16 *)val);
 if (password != ETP_I2C_IAP_PASSWORD) {
  dev_err(dev, "wrong iap password: 0x%X\n", password);
  return -EIO;
 }

 return 0;
}
