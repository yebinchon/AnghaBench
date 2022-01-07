
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct pm8xxx_xoadc {unsigned int nchans; TYPE_2__* chans; } ;
struct of_phandle_args {int args_count; scalar_t__* args; int np; } ;
struct iio_dev {int dev; } ;
struct TYPE_4__ {TYPE_1__* hwchan; } ;
struct TYPE_3__ {scalar_t__ pre_scale_mux; scalar_t__ amux_channel; } ;


 int EINVAL ;
 int dev_dbg (int *,char*,scalar_t__,scalar_t__) ;
 int dev_err (int *,char*,int ,int) ;
 struct pm8xxx_xoadc* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int pm8xxx_of_xlate(struct iio_dev *indio_dev,
      const struct of_phandle_args *iiospec)
{
 struct pm8xxx_xoadc *adc = iio_priv(indio_dev);
 u8 pre_scale_mux;
 u8 amux_channel;
 unsigned int i;





 if (iiospec->args_count != 2) {
  dev_err(&indio_dev->dev, "wrong number of arguments for %pOFn need 2 got %d\n",
   iiospec->np,
   iiospec->args_count);
  return -EINVAL;
 }
 pre_scale_mux = (u8)iiospec->args[0];
 amux_channel = (u8)iiospec->args[1];
 dev_dbg(&indio_dev->dev, "pre scale/mux: %02x, amux: %02x\n",
  pre_scale_mux, amux_channel);


 for (i = 0; i < adc->nchans; i++)
  if (adc->chans[i].hwchan->pre_scale_mux == pre_scale_mux &&
      adc->chans[i].hwchan->amux_channel == amux_channel)
   return i;

 return -EINVAL;
}
