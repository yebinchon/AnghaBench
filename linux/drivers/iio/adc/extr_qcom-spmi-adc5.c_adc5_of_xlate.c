
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_phandle_args {scalar_t__* args; } ;
struct iio_dev {int dummy; } ;
struct adc5_chip {int nchannels; TYPE_1__* chan_props; } ;
struct TYPE_2__ {scalar_t__ channel; } ;


 int EINVAL ;
 struct adc5_chip* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int adc5_of_xlate(struct iio_dev *indio_dev,
    const struct of_phandle_args *iiospec)
{
 struct adc5_chip *adc = iio_priv(indio_dev);
 int i;

 for (i = 0; i < adc->nchannels; i++)
  if (adc->chan_props[i].channel == iiospec->args[0])
   return i;

 return -EINVAL;
}
