
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int* active_scan_mask; } ;
struct ad7887_state {int * msg; int * ring_msg; int spi; } ;


 size_t AD7887_CH0 ;
 size_t AD7887_CH0_CH1 ;
 size_t AD7887_CH1 ;
 struct ad7887_state* iio_priv (struct iio_dev*) ;
 int spi_sync (int ,int *) ;

__attribute__((used)) static int ad7887_ring_preenable(struct iio_dev *indio_dev)
{
 struct ad7887_state *st = iio_priv(indio_dev);


 switch (*indio_dev->active_scan_mask) {
 case (1 << 0):
  st->ring_msg = &st->msg[AD7887_CH0];
  break;
 case (1 << 1):
  st->ring_msg = &st->msg[AD7887_CH1];

  spi_sync(st->spi, st->ring_msg);
  break;
 case ((1 << 1) | (1 << 0)):
  st->ring_msg = &st->msg[AD7887_CH0_CH1];
  break;
 }

 return 0;
}
