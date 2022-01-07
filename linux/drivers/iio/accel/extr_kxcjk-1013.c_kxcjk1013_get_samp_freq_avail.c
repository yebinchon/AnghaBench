
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kxcjk1013_data {scalar_t__ chipset; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ KXTF9 ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct kxcjk1013_data* iio_priv (struct iio_dev*) ;
 char* kxcjk1013_samp_freq_avail ;
 char* kxtf9_samp_freq_avail ;
 int sprintf (char*,char*,char const*) ;

__attribute__((used)) static ssize_t kxcjk1013_get_samp_freq_avail(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct kxcjk1013_data *data = iio_priv(indio_dev);
 const char *str;

 if (data->chipset == KXTF9)
  str = kxtf9_samp_freq_avail;
 else
  str = kxcjk1013_samp_freq_avail;

 return sprintf(buf, "%s\n", str);
}
