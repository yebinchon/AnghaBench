
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
struct adxl372_state {int dummy; } ;


 unsigned long ADXL372_INT1_MAP_FIFO_FULL_MSK ;
 int adxl372_set_interrupts (struct adxl372_state*,unsigned long,int ) ;
 struct adxl372_state* iio_priv (struct iio_dev*) ;
 struct iio_dev* iio_trigger_get_drvdata (struct iio_trigger*) ;

__attribute__((used)) static int adxl372_dready_trig_set_state(struct iio_trigger *trig,
      bool state)
{
 struct iio_dev *indio_dev = iio_trigger_get_drvdata(trig);
 struct adxl372_state *st = iio_priv(indio_dev);
 unsigned long int mask = 0;

 if (state)
  mask = ADXL372_INT1_MAP_FIFO_FULL_MSK;

 return adxl372_set_interrupts(st, mask, 0);
}
