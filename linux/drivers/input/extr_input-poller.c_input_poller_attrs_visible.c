
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct kobject {int dummy; } ;
struct input_dev {scalar_t__ poller; } ;
struct device {int dummy; } ;
struct attribute {int mode; } ;


 struct device* kobj_to_dev (struct kobject*) ;
 struct input_dev* to_input_dev (struct device*) ;

__attribute__((used)) static umode_t input_poller_attrs_visible(struct kobject *kobj,
       struct attribute *attr, int n)
{
 struct device *dev = kobj_to_dev(kobj);
 struct input_dev *input = to_input_dev(dev);

 return input->poller ? attr->mode : 0;
}
