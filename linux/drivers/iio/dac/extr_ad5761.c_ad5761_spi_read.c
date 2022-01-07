
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct iio_dev {int mlock; } ;
struct ad5761_state {int dummy; } ;


 int _ad5761_spi_read (struct ad5761_state*,int ,int *) ;
 struct ad5761_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ad5761_spi_read(struct iio_dev *indio_dev, u8 addr, u16 *val)
{
 struct ad5761_state *st = iio_priv(indio_dev);
 int ret;

 mutex_lock(&indio_dev->mlock);
 ret = _ad5761_spi_read(st, addr, val);
 mutex_unlock(&indio_dev->mlock);

 return ret;
}
