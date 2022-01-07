
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vf610_dac {unsigned int conv_mode; scalar_t__ regs; } ;
struct iio_dev {int mlock; } ;
struct iio_chan_spec {int dummy; } ;


 int VF610_DAC_LPEN ;
 scalar_t__ VF610_DACx_STATCTRL ;
 struct vf610_dac* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int vf610_set_conversion_mode(struct iio_dev *indio_dev,
    const struct iio_chan_spec *chan,
    unsigned int mode)
{
 struct vf610_dac *info = iio_priv(indio_dev);
 int val;

 mutex_lock(&indio_dev->mlock);
 info->conv_mode = mode;
 val = readl(info->regs + VF610_DACx_STATCTRL);
 if (mode)
  val |= VF610_DAC_LPEN;
 else
  val &= ~VF610_DAC_LPEN;
 writel(val, info->regs + VF610_DACx_STATCTRL);
 mutex_unlock(&indio_dev->mlock);

 return 0;
}
