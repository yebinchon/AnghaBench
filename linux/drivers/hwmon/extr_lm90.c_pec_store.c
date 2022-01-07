
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int I2C_CLIENT_PEC ;
 int kstrtol (char const*,int,long*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t pec_store(struct device *dev, struct device_attribute *dummy,
    const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err < 0)
  return err;

 switch (val) {
 case 0:
  client->flags &= ~I2C_CLIENT_PEC;
  break;
 case 1:
  client->flags |= I2C_CLIENT_PEC;
  break;
 default:
  return -EINVAL;
 }

 return count;
}
