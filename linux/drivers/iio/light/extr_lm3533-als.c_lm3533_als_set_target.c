
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm3533_als {int lm3533; } ;
struct iio_dev {int dev; } ;


 int EINVAL ;
 unsigned int LM3533_ALS_CHANNEL_CURRENT_MAX ;
 unsigned int LM3533_ALS_ZONE_MAX ;
 int dev_err (int *,char*) ;
 struct lm3533_als* iio_priv (struct iio_dev*) ;
 int lm3533_als_get_target_reg (unsigned int,unsigned int) ;
 int lm3533_write (int ,int ,int ) ;

__attribute__((used)) static int lm3533_als_set_target(struct iio_dev *indio_dev, unsigned channel,
       unsigned zone, u8 val)
{
 struct lm3533_als *als = iio_priv(indio_dev);
 u8 reg;
 int ret;

 if (channel > LM3533_ALS_CHANNEL_CURRENT_MAX)
  return -EINVAL;

 if (zone > LM3533_ALS_ZONE_MAX)
  return -EINVAL;

 reg = lm3533_als_get_target_reg(channel, zone);
 ret = lm3533_write(als->lm3533, reg, val);
 if (ret)
  dev_err(&indio_dev->dev, "failed to set target current\n");

 return ret;
}
