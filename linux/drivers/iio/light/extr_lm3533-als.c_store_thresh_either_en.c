
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm3533_als {int flags; int zone; int irq; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EBUSY ;
 int EINVAL ;
 int LM3533_ALS_FLAG_INT_ENABLED ;
 int atomic_set (int *,int ) ;
 int clear_bit (int ,int *) ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct lm3533_als* iio_priv (struct iio_dev*) ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 int lm3533_als_get_zone (struct iio_dev*,int *) ;
 int lm3533_als_set_int_mode (struct iio_dev*,unsigned long) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static ssize_t store_thresh_either_en(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t len)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct lm3533_als *als = iio_priv(indio_dev);
 unsigned long enable;
 bool int_enabled;
 u8 zone;
 int ret;

 if (!als->irq)
  return -EBUSY;

 if (kstrtoul(buf, 0, &enable))
  return -EINVAL;

 int_enabled = test_bit(LM3533_ALS_FLAG_INT_ENABLED, &als->flags);

 if (enable && !int_enabled) {
  ret = lm3533_als_get_zone(indio_dev, &zone);
  if (ret)
   return ret;

  atomic_set(&als->zone, zone);

  set_bit(LM3533_ALS_FLAG_INT_ENABLED, &als->flags);
 }

 ret = lm3533_als_set_int_mode(indio_dev, enable);
 if (ret) {
  if (!int_enabled)
   clear_bit(LM3533_ALS_FLAG_INT_ENABLED, &als->flags);

  return ret;
 }

 if (!enable)
  clear_bit(LM3533_ALS_FLAG_INT_ENABLED, &als->flags);

 return len;
}
