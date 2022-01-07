
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raydium_data {scalar_t__ boot_mode; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ RAYDIUM_TS_MAIN ;
 struct raydium_data* i2c_get_clientdata (struct i2c_client*) ;
 int sprintf (char*,char*,char*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t raydium_i2c_boot_mode_show(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct raydium_data *ts = i2c_get_clientdata(client);

 return sprintf(buf, "%s\n",
         ts->boot_mode == RAYDIUM_TS_MAIN ?
    "Normal" : "Recovery");
}
