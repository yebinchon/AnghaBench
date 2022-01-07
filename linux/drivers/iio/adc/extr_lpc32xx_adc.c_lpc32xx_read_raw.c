
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_adc_state {int value; int vref; int clk; int completion; int adc_base; } ;
struct iio_dev {int mlock; } ;
struct iio_chan_spec {int address; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int LPC32XXAD_CTRL (int ) ;
 int LPC32XXAD_INTERNAL ;
 int LPC32XXAD_PDN_CTRL ;
 int LPC32XXAD_REFm ;
 int LPC32XXAD_REFp ;
 int LPC32XXAD_SELECT (int ) ;
 int LPC32XXAD_STROBE ;
 int __raw_writel (int,int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct lpc32xx_adc_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_get_voltage (int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int lpc32xx_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val,
       int *val2,
       long mask)
{
 struct lpc32xx_adc_state *st = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  mutex_lock(&indio_dev->mlock);
  ret = clk_prepare_enable(st->clk);
  if (ret) {
   mutex_unlock(&indio_dev->mlock);
   return ret;
  }

  __raw_writel(LPC32XXAD_INTERNAL | (chan->address) |
        LPC32XXAD_REFp | LPC32XXAD_REFm,
        LPC32XXAD_SELECT(st->adc_base));

  __raw_writel(LPC32XXAD_PDN_CTRL | LPC32XXAD_STROBE,
        LPC32XXAD_CTRL(st->adc_base));
  wait_for_completion(&st->completion);
  clk_disable_unprepare(st->clk);
  *val = st->value;
  mutex_unlock(&indio_dev->mlock);

  return IIO_VAL_INT;

 case 128:
  *val = regulator_get_voltage(st->vref) / 1000;
  *val2 = 10;

  return IIO_VAL_FRACTIONAL_LOG2;
 default:
  return -EINVAL;
 }
}
