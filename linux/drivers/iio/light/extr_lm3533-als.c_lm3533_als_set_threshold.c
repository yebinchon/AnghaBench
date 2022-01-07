
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct lm3533_als {int thresh_mutex; int lm3533; } ;
struct iio_dev {int dev; } ;


 int EINVAL ;
 unsigned int LM3533_ALS_THRESH_MAX ;
 int dev_err (int *,char*) ;
 struct lm3533_als* iio_priv (struct iio_dev*) ;
 scalar_t__ lm3533_als_get_threshold_reg (unsigned int,int) ;
 int lm3533_read (int ,scalar_t__,scalar_t__*) ;
 int lm3533_write (int ,scalar_t__,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lm3533_als_set_threshold(struct iio_dev *indio_dev, unsigned nr,
       bool raising, u8 val)
{
 struct lm3533_als *als = iio_priv(indio_dev);
 u8 val2;
 u8 reg, reg2;
 int ret;

 if (nr > LM3533_ALS_THRESH_MAX)
  return -EINVAL;

 reg = lm3533_als_get_threshold_reg(nr, raising);
 reg2 = lm3533_als_get_threshold_reg(nr, !raising);

 mutex_lock(&als->thresh_mutex);
 ret = lm3533_read(als->lm3533, reg2, &val2);
 if (ret) {
  dev_err(&indio_dev->dev, "failed to get threshold\n");
  goto out;
 }





 if ((raising && (val < val2)) || (!raising && (val > val2))) {
  ret = -EINVAL;
  goto out;
 }

 ret = lm3533_write(als->lm3533, reg, val);
 if (ret) {
  dev_err(&indio_dev->dev, "failed to set threshold\n");
  goto out;
 }
out:
 mutex_unlock(&als->thresh_mutex);

 return ret;
}
