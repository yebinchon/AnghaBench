
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int BUILD_BUG_ON (int) ;
 int EIO ;
 int ETP_SMBUS_PACKET_QUERY ;
 int ETP_SMBUS_REPORT_LEN ;
 size_t ETP_SMBUS_REPORT_OFFSET ;
 int I2C_SMBUS_BLOCK_MAX ;
 int dev_err (int *,char*,int,...) ;
 int i2c_smbus_read_block_data (struct i2c_client*,int ,int *) ;

__attribute__((used)) static int elan_smbus_get_report(struct i2c_client *client, u8 *report)
{
 int len;

 BUILD_BUG_ON(I2C_SMBUS_BLOCK_MAX > ETP_SMBUS_REPORT_LEN);

 len = i2c_smbus_read_block_data(client,
     ETP_SMBUS_PACKET_QUERY,
     &report[ETP_SMBUS_REPORT_OFFSET]);
 if (len < 0) {
  dev_err(&client->dev, "failed to read report data: %d\n", len);
  return len;
 }

 if (len != ETP_SMBUS_REPORT_LEN) {
  dev_err(&client->dev,
   "wrong report length (%d vs %d expected)\n",
   len, ETP_SMBUS_REPORT_LEN);
  return -EIO;
 }

 return 0;
}
