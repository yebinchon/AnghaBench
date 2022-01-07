
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int mlock; } ;
struct ad5421_state {unsigned int ctrl; } ;


 int AD5421_REG_CTRL ;
 unsigned int ad5421_write_unlocked (struct iio_dev*,int ,unsigned int) ;
 struct ad5421_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ad5421_update_ctrl(struct iio_dev *indio_dev, unsigned int set,
 unsigned int clr)
{
 struct ad5421_state *st = iio_priv(indio_dev);
 unsigned int ret;

 mutex_lock(&indio_dev->mlock);

 st->ctrl &= ~clr;
 st->ctrl |= set;

 ret = ad5421_write_unlocked(indio_dev, AD5421_REG_CTRL, st->ctrl);

 mutex_unlock(&indio_dev->mlock);

 return ret;
}
