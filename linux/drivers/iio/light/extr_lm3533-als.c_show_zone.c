
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 int lm3533_als_get_zone (struct iio_dev*,int *) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t show_zone(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 u8 zone;
 int ret;

 ret = lm3533_als_get_zone(indio_dev, &zone);
 if (ret)
  return ret;

 return scnprintf(buf, PAGE_SIZE, "%u\n", zone);
}
