
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int mlock; } ;
struct ad5764_state {TYPE_1__* data; int spi; } ;
struct TYPE_2__ {int * d8; int d32; } ;


 int cpu_to_be32 (unsigned int) ;
 struct ad5764_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_write (int ,int *,int) ;

__attribute__((used)) static int ad5764_write(struct iio_dev *indio_dev, unsigned int reg,
 unsigned int val)
{
 struct ad5764_state *st = iio_priv(indio_dev);
 int ret;

 mutex_lock(&indio_dev->mlock);
 st->data[0].d32 = cpu_to_be32((reg << 16) | val);

 ret = spi_write(st->spi, &st->data[0].d8[1], 3);
 mutex_unlock(&indio_dev->mlock);

 return ret;
}
