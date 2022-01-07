
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_polled_devres {void* polldev; } ;
struct device {int dummy; } ;



__attribute__((used)) static int devm_input_polldev_match(struct device *dev, void *res, void *data)
{
 struct input_polled_devres *devres = res;

 return devres->polldev == data;
}
