
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct devfreq {int max_freq; int scaling_max_freq; } ;
typedef int ssize_t ;


 int min (int ,int ) ;
 int sprintf (char*,char*,int ) ;
 struct devfreq* to_devfreq (struct device*) ;

__attribute__((used)) static ssize_t max_freq_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct devfreq *df = to_devfreq(dev);

 return sprintf(buf, "%lu\n", min(df->scaling_max_freq, df->max_freq));
}
