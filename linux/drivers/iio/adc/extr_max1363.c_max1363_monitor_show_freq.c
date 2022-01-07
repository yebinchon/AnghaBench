
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max1363_state {size_t monitor_speed; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int dev_to_iio_dev (struct device*) ;
 struct max1363_state* iio_priv (int ) ;
 int* max1363_monitor_speeds ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t max1363_monitor_show_freq(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct max1363_state *st = iio_priv(dev_to_iio_dev(dev));
 return sprintf(buf, "%d\n", max1363_monitor_speeds[st->monitor_speed]);
}
