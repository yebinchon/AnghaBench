
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int AD5360_SF_CTRL_PWR_DOWN ;
 int ad5360_update_ctrl (struct iio_dev*,int ,int ) ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 int strtobool (char const*,int*) ;

__attribute__((used)) static ssize_t ad5360_write_dac_powerdown(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t len)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 bool pwr_down;
 int ret;

 ret = strtobool(buf, &pwr_down);
 if (ret)
  return ret;

 if (pwr_down)
  ret = ad5360_update_ctrl(indio_dev, AD5360_SF_CTRL_PWR_DOWN, 0);
 else
  ret = ad5360_update_ctrl(indio_dev, 0, AD5360_SF_CTRL_PWR_DOWN);

 return ret ? ret : len;
}
