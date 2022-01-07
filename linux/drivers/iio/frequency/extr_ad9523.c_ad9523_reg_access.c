
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct ad9523_state {int lock; } ;


 unsigned int AD9523_R1B ;
 int ad9523_io_update (struct iio_dev*) ;
 int ad9523_read (struct iio_dev*,unsigned int) ;
 int ad9523_write (struct iio_dev*,unsigned int,unsigned int) ;
 struct ad9523_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ad9523_reg_access(struct iio_dev *indio_dev,
         unsigned int reg, unsigned int writeval,
         unsigned int *readval)
{
 struct ad9523_state *st = iio_priv(indio_dev);
 int ret;

 mutex_lock(&st->lock);
 if (readval == ((void*)0)) {
  ret = ad9523_write(indio_dev, reg | AD9523_R1B, writeval);
  ad9523_io_update(indio_dev);
 } else {
  ret = ad9523_read(indio_dev, reg | AD9523_R1B);
  if (ret < 0)
   goto out_unlock;
  *readval = ret;
  ret = 0;
 }

out_unlock:
 mutex_unlock(&st->lock);

 return ret;
}
