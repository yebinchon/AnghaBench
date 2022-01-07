
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm3533_als {int lm3533; } ;
struct iio_dev {int dev; } ;


 int LM3533_ALS_INT_ENABLE_MASK ;
 int LM3533_REG_ALS_ZONE_INFO ;
 int dev_err (int *,char*) ;
 struct lm3533_als* iio_priv (struct iio_dev*) ;
 int lm3533_read (int ,int ,int*) ;

__attribute__((used)) static int lm3533_als_get_int_mode(struct iio_dev *indio_dev, int *enable)
{
 struct lm3533_als *als = iio_priv(indio_dev);
 u8 mask = LM3533_ALS_INT_ENABLE_MASK;
 u8 val;
 int ret;

 ret = lm3533_read(als->lm3533, LM3533_REG_ALS_ZONE_INFO, &val);
 if (ret) {
  dev_err(&indio_dev->dev, "failed to get int mode\n");
  return ret;
 }

 *enable = !!(val & mask);

 return 0;
}
