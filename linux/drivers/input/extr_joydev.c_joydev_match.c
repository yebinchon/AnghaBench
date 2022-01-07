
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_handler {int dummy; } ;
struct input_dev {int dummy; } ;


 scalar_t__ joydev_dev_is_absolute_mouse (struct input_dev*) ;
 scalar_t__ joydev_dev_is_blacklisted (struct input_dev*) ;

__attribute__((used)) static bool joydev_match(struct input_handler *handler, struct input_dev *dev)
{

 if (joydev_dev_is_blacklisted(dev))
  return 0;


 if (joydev_dev_is_absolute_mouse(dev))
  return 0;

 return 1;
}
