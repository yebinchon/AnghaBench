
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct elan_tp_data {int fw_checksum; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct elan_tp_data* i2c_get_clientdata (struct i2c_client*) ;
 int sprintf (char*,char*,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t elan_sysfs_read_fw_checksum(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct elan_tp_data *data = i2c_get_clientdata(client);

 return sprintf(buf, "0x%04x\n", data->fw_checksum);
}
