
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int EIO ;
 int ETP_I2C_REPORT_LEN ;
 int dev_err (int *,char*,int,...) ;
 int i2c_master_recv (struct i2c_client*,int *,int) ;

__attribute__((used)) static int elan_i2c_get_report(struct i2c_client *client, u8 *report)
{
 int len;

 len = i2c_master_recv(client, report, ETP_I2C_REPORT_LEN);
 if (len < 0) {
  dev_err(&client->dev, "failed to read report data: %d\n", len);
  return len;
 }

 if (len != ETP_I2C_REPORT_LEN) {
  dev_err(&client->dev,
   "wrong report length (%d vs %d expected)\n",
   len, ETP_I2C_REPORT_LEN);
  return -EIO;
 }

 return 0;
}
