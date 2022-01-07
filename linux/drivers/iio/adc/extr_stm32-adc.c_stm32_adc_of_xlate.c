
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_phandle_args {scalar_t__* args; } ;
struct iio_dev {int num_channels; TYPE_1__* channels; } ;
struct TYPE_2__ {scalar_t__ channel; } ;


 int EINVAL ;

__attribute__((used)) static int stm32_adc_of_xlate(struct iio_dev *indio_dev,
         const struct of_phandle_args *iiospec)
{
 int i;

 for (i = 0; i < indio_dev->num_channels; i++)
  if (indio_dev->channels[i].channel == iiospec->args[0])
   return i;

 return -EINVAL;
}
