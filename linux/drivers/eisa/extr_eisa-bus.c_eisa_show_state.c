
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eisa_device {int state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EISA_CONFIG_ENABLED ;
 int sprintf (char*,char*,int) ;
 struct eisa_device* to_eisa_device (struct device*) ;

__attribute__((used)) static ssize_t eisa_show_state(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct eisa_device *edev = to_eisa_device(dev);
 return sprintf(buf, "%d\n", edev->state & EISA_CONFIG_ENABLED);
}
