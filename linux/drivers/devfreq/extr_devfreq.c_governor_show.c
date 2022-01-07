
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* governor; } ;
struct TYPE_3__ {char* name; } ;


 int EINVAL ;
 int sprintf (char*,char*,char*) ;
 TYPE_2__* to_devfreq (struct device*) ;

__attribute__((used)) static ssize_t governor_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 if (!to_devfreq(dev)->governor)
  return -EINVAL;

 return sprintf(buf, "%s\n", to_devfreq(dev)->governor->name);
}
