
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7606_state {int num_os_ratios; int oversampling_avail; } ;
typedef int ssize_t ;


 int ad7606_show_avail (char*,int ,int ,int) ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct ad7606_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static ssize_t ad7606_oversampling_ratio_avail(struct device *dev,
            struct device_attribute *attr,
            char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct ad7606_state *st = iio_priv(indio_dev);

 return ad7606_show_avail(buf, st->oversampling_avail,
     st->num_os_ratios, 0);
}
