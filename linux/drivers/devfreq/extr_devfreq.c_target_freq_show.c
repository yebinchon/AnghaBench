
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int previous_freq; } ;


 int sprintf (char*,char*,int ) ;
 TYPE_1__* to_devfreq (struct device*) ;

__attribute__((used)) static ssize_t target_freq_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 return sprintf(buf, "%lu\n", to_devfreq(dev)->previous_freq);
}
