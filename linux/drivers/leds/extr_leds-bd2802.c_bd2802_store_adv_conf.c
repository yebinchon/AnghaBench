
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bd2802_led {int rwsem; scalar_t__ adf_on; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int bd2802_disable_adv_conf (struct bd2802_led*) ;
 int bd2802_enable_adv_conf (struct bd2802_led*) ;
 int down_write (int *) ;
 struct bd2802_led* i2c_get_clientdata (int ) ;
 int strncmp (char const*,char*,int) ;
 int to_i2c_client (struct device*) ;
 int up_write (int *) ;

__attribute__((used)) static ssize_t bd2802_store_adv_conf(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 struct bd2802_led *led = i2c_get_clientdata(to_i2c_client(dev));

 if (!count)
  return -EINVAL;

 down_write(&led->rwsem);
 if (!led->adf_on && !strncmp(buf, "on", 2))
  bd2802_enable_adv_conf(led);
 else if (led->adf_on && !strncmp(buf, "off", 3))
  bd2802_disable_adv_conf(led);
 up_write(&led->rwsem);

 return count;
}
