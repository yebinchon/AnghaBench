
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_dac_chip {int powerdown_mode; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 struct ti_dac_chip* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ti_dac_get_powerdown_mode(struct iio_dev *indio_dev,
         const struct iio_chan_spec *chan)
{
 struct ti_dac_chip *ti_dac = iio_priv(indio_dev);

 return ti_dac->powerdown_mode;
}
