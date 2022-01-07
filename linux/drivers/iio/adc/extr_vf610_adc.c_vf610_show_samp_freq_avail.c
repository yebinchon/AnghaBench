
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vf610_adc {int * sample_freq_avail; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ PAGE_SIZE ;
 int dev_to_iio_dev (struct device*) ;
 struct vf610_adc* iio_priv (int ) ;
 scalar_t__ scnprintf (char*,scalar_t__,char*,int ) ;

__attribute__((used)) static ssize_t vf610_show_samp_freq_avail(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct vf610_adc *info = iio_priv(dev_to_iio_dev(dev));
 size_t len = 0;
 int i;

 for (i = 0; i < ARRAY_SIZE(info->sample_freq_avail); i++)
  len += scnprintf(buf + len, PAGE_SIZE - len,
   "%u ", info->sample_freq_avail[i]);


 buf[len - 1] = '\n';

 return len;
}
