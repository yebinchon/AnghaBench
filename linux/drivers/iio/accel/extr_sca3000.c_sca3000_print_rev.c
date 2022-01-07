
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sca3000_state {int* rx; int lock; } ;
struct iio_dev {int dev; } ;


 int SCA3000_REG_REVID_ADDR ;
 int SCA3000_REG_REVID_MAJOR_MASK ;
 int SCA3000_REG_REVID_MINOR_MASK ;
 int dev_info (int *,char*,int,int) ;
 struct sca3000_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sca3000_read_data_short (struct sca3000_state*,int ,int) ;

__attribute__((used)) static int sca3000_print_rev(struct iio_dev *indio_dev)
{
 int ret;
 struct sca3000_state *st = iio_priv(indio_dev);

 mutex_lock(&st->lock);
 ret = sca3000_read_data_short(st, SCA3000_REG_REVID_ADDR, 1);
 if (ret < 0)
  goto error_ret;
 dev_info(&indio_dev->dev,
   "sca3000 revision major=%lu, minor=%lu\n",
   st->rx[0] & SCA3000_REG_REVID_MAJOR_MASK,
   st->rx[0] & SCA3000_REG_REVID_MINOR_MASK);
error_ret:
 mutex_unlock(&st->lock);

 return ret;
}
