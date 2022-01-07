
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct ad7887_state {int * msg; int spi; } ;


 size_t AD7887_CH0 ;
 struct ad7887_state* iio_priv (struct iio_dev*) ;
 int spi_sync (int ,int *) ;

__attribute__((used)) static int ad7887_ring_postdisable(struct iio_dev *indio_dev)
{
 struct ad7887_state *st = iio_priv(indio_dev);


 return spi_sync(st->spi, &st->msg[AD7887_CH0]);
}
