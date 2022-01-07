
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct adxl372_state {unsigned int watermark; } ;


 unsigned int ADXL372_FIFO_SIZE ;
 struct adxl372_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int adxl372_set_watermark(struct iio_dev *indio_dev, unsigned int val)
{
 struct adxl372_state *st = iio_priv(indio_dev);

 if (val > ADXL372_FIFO_SIZE)
  val = ADXL372_FIFO_SIZE;

 st->watermark = val;

 return 0;
}
