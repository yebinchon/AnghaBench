
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int NETDEV_ATTR_TX ;
 int netdev_led_attr_store (struct device*,char const*,size_t,int ) ;

__attribute__((used)) static ssize_t tx_store(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t size)
{
 return netdev_led_attr_store(dev, buf, size, NETDEV_ATTR_TX);
}
