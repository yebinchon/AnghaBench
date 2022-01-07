
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int NETDEV_ATTR_LINK ;
 int netdev_led_attr_show (struct device*,char*,int ) ;

__attribute__((used)) static ssize_t link_show(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 return netdev_led_attr_show(dev, buf, NETDEV_ATTR_LINK);
}
