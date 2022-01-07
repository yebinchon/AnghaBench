
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {TYPE_1__* poller; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int poll_interval; } ;


 int sprintf (char*,char*,int) ;
 struct input_dev* to_input_dev (struct device*) ;

__attribute__((used)) static ssize_t input_dev_get_poll_interval(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct input_dev *input = to_input_dev(dev);

 return sprintf(buf, "%d\n", input->poller->poll_interval);
}
