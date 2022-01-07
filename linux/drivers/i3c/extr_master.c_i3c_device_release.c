
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct i3c_device {TYPE_1__ dev; int desc; } ;
struct device {int dummy; } ;


 int WARN_ON (int ) ;
 struct i3c_device* dev_to_i3cdev (struct device*) ;
 int kfree (struct i3c_device*) ;
 int of_node_put (int ) ;

__attribute__((used)) static void i3c_device_release(struct device *dev)
{
 struct i3c_device *i3cdev = dev_to_i3cdev(dev);

 WARN_ON(i3cdev->desc);

 of_node_put(i3cdev->dev.of_node);
 kfree(i3cdev);
}
