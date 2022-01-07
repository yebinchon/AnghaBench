
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int main_ver; int sub_ver; } ;
struct raydium_data {TYPE_1__ info; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct raydium_data* i2c_get_clientdata (struct i2c_client*) ;
 int sprintf (char*,char*,int,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t raydium_i2c_fw_ver_show(struct device *dev,
           struct device_attribute *attr, char *buf)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct raydium_data *ts = i2c_get_clientdata(client);

 return sprintf(buf, "%d.%d\n", ts->info.main_ver, ts->info.sub_ver);
}
