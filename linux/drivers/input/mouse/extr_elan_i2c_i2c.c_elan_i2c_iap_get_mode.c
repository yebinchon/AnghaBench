
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dev; } ;
typedef enum tp_mode { ____Placeholder_tp_mode } tp_mode ;
typedef int __le16 ;


 int ETP_I2C_IAP_CTRL_CMD ;
 int ETP_I2C_MAIN_MODE_ON ;
 int IAP_MODE ;
 int MAIN_MODE ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*,int) ;
 int elan_i2c_read_cmd (struct i2c_client*,int ,int *) ;
 int le16_to_cpup (int *) ;

__attribute__((used)) static int elan_i2c_iap_get_mode(struct i2c_client *client, enum tp_mode *mode)
{
 int error;
 u16 constant;
 u8 val[3];

 error = elan_i2c_read_cmd(client, ETP_I2C_IAP_CTRL_CMD, val);
 if (error) {
  dev_err(&client->dev,
   "failed to read iap control register: %d\n",
   error);
  return error;
 }

 constant = le16_to_cpup((__le16 *)val);
 dev_dbg(&client->dev, "iap control reg: 0x%04x.\n", constant);

 *mode = (constant & ETP_I2C_MAIN_MODE_ON) ? MAIN_MODE : IAP_MODE;

 return 0;
}
