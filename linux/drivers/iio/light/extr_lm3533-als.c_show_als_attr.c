
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


 int ENXIO ;




 int PAGE_SIZE ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 int lm3533_als_get_hysteresis (struct iio_dev*,int ,int *) ;
 int lm3533_als_get_target (struct iio_dev*,int ,int ,int *) ;
 int lm3533_als_get_threshold (struct iio_dev*,int ,int,int *) ;
 int scnprintf (char*,int ,char*,int ) ;
 struct lm3533_als_attribute* to_lm3533_als_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_als_attr(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct lm3533_als_attribute *als_attr = to_lm3533_als_attr(attr);
 u8 val;
 int ret;

 switch (als_attr->type) {
 case 131:
  ret = lm3533_als_get_hysteresis(indio_dev, als_attr->val1,
         &val);
  break;
 case 130:
  ret = lm3533_als_get_target(indio_dev, als_attr->val1,
       als_attr->val2, &val);
  break;
 case 129:
  ret = lm3533_als_get_threshold(indio_dev, als_attr->val1,
        0, &val);
  break;
 case 128:
  ret = lm3533_als_get_threshold(indio_dev, als_attr->val1,
        1, &val);
  break;
 default:
  ret = -ENXIO;
 }

 if (ret)
  return ret;

 return scnprintf(buf, PAGE_SIZE, "%u\n", val);
}
