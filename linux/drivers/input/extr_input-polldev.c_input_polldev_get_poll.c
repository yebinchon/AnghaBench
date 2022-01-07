
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_polled_dev {int poll_interval; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct input_polled_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t input_polldev_get_poll(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct input_polled_dev *polldev = dev_get_drvdata(dev);

 return sprintf(buf, "%d\n", polldev->poll_interval);
}
