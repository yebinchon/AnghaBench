
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct i3c_device {struct device dev; } ;



struct device *i3cdev_to_dev(struct i3c_device *i3cdev)
{
 return &i3cdev->dev;
}
