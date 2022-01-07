
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stmfts_data {int client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int status ;
typedef int ssize_t ;


 int STMFTS_READ_STATUS ;
 struct stmfts_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_i2c_block_data (int ,int ,int,int*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t stmfts_sysfs_read_status(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct stmfts_data *sdata = dev_get_drvdata(dev);
 u8 status[4];
 int err;

 err = i2c_smbus_read_i2c_block_data(sdata->client, STMFTS_READ_STATUS,
         sizeof(status), status);
 if (err)
  return err;

 return sprintf(buf, "%#02x\n", status[0]);
}
