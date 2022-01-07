
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_dac_chip {int powerdown; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef int ssize_t ;


 struct ti_dac_chip* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t ti_dac_read_powerdown(struct iio_dev *indio_dev,
         uintptr_t private,
         const struct iio_chan_spec *chan,
         char *buf)
{
 struct ti_dac_chip *ti_dac = iio_priv(indio_dev);

 return sprintf(buf, "%d\n", ti_dac->powerdown);
}
