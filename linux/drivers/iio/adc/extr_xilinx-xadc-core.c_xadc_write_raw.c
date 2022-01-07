
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xadc {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;
 long IIO_CHAN_INFO_SAMP_FREQ ;
 int XADC_CONF2_DIV_MASK ;
 unsigned int XADC_CONF2_DIV_OFFSET ;
 int XADC_REG_CONF2 ;
 struct xadc* iio_priv (struct iio_dev*) ;
 unsigned long xadc_get_dclk_rate (struct xadc*) ;
 int xadc_update_adc_reg (struct xadc*,int ,int ,unsigned int) ;

__attribute__((used)) static int xadc_write_raw(struct iio_dev *indio_dev,
 struct iio_chan_spec const *chan, int val, int val2, long info)
{
 struct xadc *xadc = iio_priv(indio_dev);
 unsigned long clk_rate = xadc_get_dclk_rate(xadc);
 unsigned int div;

 if (!clk_rate)
  return -EINVAL;

 if (info != IIO_CHAN_INFO_SAMP_FREQ)
  return -EINVAL;

 if (val <= 0)
  return -EINVAL;


 if (val > 150000)
  val = 150000;

 val *= 26;


 if (val < 1000000)
  val = 1000000;





 div = clk_rate / val;
 if (clk_rate / div / 26 > 150000)
  div++;
 if (div < 2)
  div = 2;
 else if (div > 0xff)
  div = 0xff;

 return xadc_update_adc_reg(xadc, XADC_REG_CONF2, XADC_CONF2_DIV_MASK,
  div << XADC_CONF2_DIV_OFFSET);
}
