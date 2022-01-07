
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int blinkm_test_run (struct i2c_client*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t store_test(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{

 struct i2c_client *client;
 int ret;
 client = to_i2c_client(dev);


 ret = blinkm_test_run(client);
 if (ret < 0)
  return ret;

 return count;
}
