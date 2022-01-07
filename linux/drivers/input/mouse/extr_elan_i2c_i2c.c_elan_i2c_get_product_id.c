
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dev; } ;
typedef int __le16 ;


 int ETP_I2C_UNIQUEID_CMD ;
 int dev_err (int *,char*,int) ;
 int elan_i2c_read_cmd (struct i2c_client*,int ,int *) ;
 int le16_to_cpup (int *) ;

__attribute__((used)) static int elan_i2c_get_product_id(struct i2c_client *client, u16 *id)
{
 int error;
 u8 val[3];

 error = elan_i2c_read_cmd(client, ETP_I2C_UNIQUEID_CMD, val);
 if (error) {
  dev_err(&client->dev, "failed to get product ID: %d\n", error);
  return error;
 }

 *id = le16_to_cpup((__le16 *)val);
 return 0;
}
