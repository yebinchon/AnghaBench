
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int ETP_I2C_PRESSURE_CMD ;
 int ETP_PRESSURE_OFFSET ;
 int dev_err (int *,char*,int) ;
 int elan_i2c_read_cmd (struct i2c_client*,int ,int*) ;

__attribute__((used)) static int elan_i2c_get_pressure_adjustment(struct i2c_client *client,
         int *adjustment)
{
 int error;
 u8 val[3];

 error = elan_i2c_read_cmd(client, ETP_I2C_PRESSURE_CMD, val);
 if (error) {
  dev_err(&client->dev, "failed to get pressure format: %d\n",
   error);
  return error;
 }

 if ((val[0] >> 4) & 0x1)
  *adjustment = 0;
 else
  *adjustment = ETP_PRESSURE_OFFSET;

 return 0;
}
