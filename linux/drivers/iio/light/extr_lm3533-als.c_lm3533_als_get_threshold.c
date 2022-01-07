
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm3533_als {int lm3533; } ;
struct iio_dev {int dev; } ;


 int EINVAL ;
 unsigned int LM3533_ALS_THRESH_MAX ;
 int dev_err (int *,char*) ;
 struct lm3533_als* iio_priv (struct iio_dev*) ;
 int lm3533_als_get_threshold_reg (unsigned int,int) ;
 int lm3533_read (int ,int ,int *) ;

__attribute__((used)) static int lm3533_als_get_threshold(struct iio_dev *indio_dev, unsigned nr,
       bool raising, u8 *val)
{
 struct lm3533_als *als = iio_priv(indio_dev);
 u8 reg;
 int ret;

 if (nr > LM3533_ALS_THRESH_MAX)
  return -EINVAL;

 reg = lm3533_als_get_threshold_reg(nr, raising);
 ret = lm3533_read(als->lm3533, reg, val);
 if (ret)
  dev_err(&indio_dev->dev, "failed to get threshold\n");

 return ret;
}
