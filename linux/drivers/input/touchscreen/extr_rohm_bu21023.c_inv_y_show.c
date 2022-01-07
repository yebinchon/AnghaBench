
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rohm_ts_data {int setup2; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int INV_Y ;
 struct rohm_ts_data* i2c_get_clientdata (struct i2c_client*) ;
 int sprintf (char*,char*,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t inv_y_show(struct device *dev, struct device_attribute *attr,
     char *buf)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct rohm_ts_data *ts = i2c_get_clientdata(client);

 return sprintf(buf, "%d\n", !!(ts->setup2 & INV_Y));
}
