
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bd2802_led {int rwsem; scalar_t__ adf_on; } ;
typedef int ssize_t ;


 int down_read (int *) ;
 struct bd2802_led* i2c_get_clientdata (int ) ;
 int sprintf (char*,char*) ;
 int to_i2c_client (struct device*) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t bd2802_show_adv_conf(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 struct bd2802_led *led = i2c_get_clientdata(to_i2c_client(dev));
 ssize_t ret;

 down_read(&led->rwsem);
 if (led->adf_on)
  ret = sprintf(buf, "on\n");
 else
  ret = sprintf(buf, "off\n");
 up_read(&led->rwsem);

 return ret;
}
