
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {int mlock; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;

 int ITG3200_DLPF_CFG_MASK ;
 int ITG3200_REG_DLPF ;
 int ITG3200_REG_SAMPLE_RATE_DIV ;
 int itg3200_read_reg_8 (struct iio_dev*,int ,int*) ;
 int itg3200_write_reg_8 (struct iio_dev*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int itg3200_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val,
        int val2,
        long mask)
{
 int ret;
 u8 t;

 switch (mask) {
 case 128:
  if (val == 0 || val2 != 0)
   return -EINVAL;

  mutex_lock(&indio_dev->mlock);

  ret = itg3200_read_reg_8(indio_dev, ITG3200_REG_DLPF, &t);
  if (ret) {
   mutex_unlock(&indio_dev->mlock);
   return ret;
  }
  t = ((t & ITG3200_DLPF_CFG_MASK) ? 1000u : 8000u) / val - 1;

  ret = itg3200_write_reg_8(indio_dev,
       ITG3200_REG_SAMPLE_RATE_DIV,
       t);

  mutex_unlock(&indio_dev->mlock);
 return ret;

 default:
  return -EINVAL;
 }
}
