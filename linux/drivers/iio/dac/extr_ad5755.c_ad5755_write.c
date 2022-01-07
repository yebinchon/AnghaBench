
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int mlock; } ;


 int ad5755_write_unlocked (struct iio_dev*,unsigned int,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ad5755_write(struct iio_dev *indio_dev, unsigned int reg,
 unsigned int val)
{
 int ret;

 mutex_lock(&indio_dev->mlock);
 ret = ad5755_write_unlocked(indio_dev, reg, val);
 mutex_unlock(&indio_dev->mlock);

 return ret;
}
