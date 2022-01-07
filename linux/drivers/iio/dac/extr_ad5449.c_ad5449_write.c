
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int mlock; } ;
struct ad5449 {int * data; int spi; } ;


 int cpu_to_be16 (unsigned int) ;
 struct ad5449* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_write (int ,int *,int) ;

__attribute__((used)) static int ad5449_write(struct iio_dev *indio_dev, unsigned int addr,
 unsigned int val)
{
 struct ad5449 *st = iio_priv(indio_dev);
 int ret;

 mutex_lock(&indio_dev->mlock);
 st->data[0] = cpu_to_be16((addr << 12) | val);
 ret = spi_write(st->spi, st->data, 2);
 mutex_unlock(&indio_dev->mlock);

 return ret;
}
