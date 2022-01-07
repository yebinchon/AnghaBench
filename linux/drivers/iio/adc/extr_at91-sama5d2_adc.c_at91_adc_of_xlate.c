
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int * args; } ;
struct iio_dev {int dummy; } ;


 int at91_adc_chan_xlate (struct iio_dev*,int ) ;

__attribute__((used)) static inline int at91_adc_of_xlate(struct iio_dev *indio_dev,
        const struct of_phandle_args *iiospec)
{
 return at91_adc_chan_xlate(indio_dev, iiospec->args[0]);
}
