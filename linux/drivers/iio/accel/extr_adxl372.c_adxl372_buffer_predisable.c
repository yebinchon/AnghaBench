
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct adxl372_state {int fifo_mode; } ;


 int ADXL372_FIFO_BYPASSED ;
 int adxl372_configure_fifo (struct adxl372_state*) ;
 int adxl372_set_interrupts (struct adxl372_state*,int ,int ) ;
 struct adxl372_state* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_predisable (struct iio_dev*) ;

__attribute__((used)) static int adxl372_buffer_predisable(struct iio_dev *indio_dev)
{
 struct adxl372_state *st = iio_priv(indio_dev);

 adxl372_set_interrupts(st, 0, 0);
 st->fifo_mode = ADXL372_FIFO_BYPASSED;
 adxl372_configure_fifo(st);

 return iio_triggered_buffer_predisable(indio_dev);
}
