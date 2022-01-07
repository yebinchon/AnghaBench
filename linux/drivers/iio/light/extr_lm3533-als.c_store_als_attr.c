
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm3533_als_attribute {int type; int val1; int val2; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ENXIO ;



 struct iio_dev* dev_to_iio_dev (struct device*) ;
 scalar_t__ kstrtou8 (char const*,int ,int *) ;
 int lm3533_als_set_target (struct iio_dev*,int ,int ,int ) ;
 int lm3533_als_set_threshold (struct iio_dev*,int ,int,int ) ;
 struct lm3533_als_attribute* to_lm3533_als_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t store_als_attr(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t len)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct lm3533_als_attribute *als_attr = to_lm3533_als_attr(attr);
 u8 val;
 int ret;

 if (kstrtou8(buf, 0, &val))
  return -EINVAL;

 switch (als_attr->type) {
 case 130:
  ret = lm3533_als_set_target(indio_dev, als_attr->val1,
       als_attr->val2, val);
  break;
 case 129:
  ret = lm3533_als_set_threshold(indio_dev, als_attr->val1,
        0, val);
  break;
 case 128:
  ret = lm3533_als_set_threshold(indio_dev, als_attr->val1,
        1, val);
  break;
 default:
  ret = -ENXIO;
 }

 if (ret)
  return ret;

 return len;
}
