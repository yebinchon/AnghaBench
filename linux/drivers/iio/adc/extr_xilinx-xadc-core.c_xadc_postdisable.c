
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xadc {int dummy; } ;
struct iio_dev {int num_channels; TYPE_1__* channels; } ;
struct TYPE_2__ {int scan_index; } ;


 unsigned long BIT (int ) ;
 int XADC_CONF1_SEQ_CONTINUOUS ;
 int XADC_CONF1_SEQ_MASK ;
 int XADC_REG_CONF1 ;
 int XADC_REG_SEQ (int) ;
 struct xadc* iio_priv (struct iio_dev*) ;
 int xadc_power_adc_b (struct xadc*,int ) ;
 int xadc_update_adc_reg (struct xadc*,int ,int ,int ) ;
 int xadc_write_adc_reg (struct xadc*,int ,unsigned long) ;

__attribute__((used)) static int xadc_postdisable(struct iio_dev *indio_dev)
{
 struct xadc *xadc = iio_priv(indio_dev);
 unsigned long scan_mask;
 int ret;
 int i;

 scan_mask = 1;
 for (i = 0; i < indio_dev->num_channels; i++)
  scan_mask |= BIT(indio_dev->channels[i].scan_index);


 ret = xadc_write_adc_reg(xadc, XADC_REG_SEQ(0), scan_mask & 0xffff);
 if (ret)
  return ret;

 ret = xadc_write_adc_reg(xadc, XADC_REG_SEQ(1), scan_mask >> 16);
 if (ret)
  return ret;

 ret = xadc_update_adc_reg(xadc, XADC_REG_CONF1, XADC_CONF1_SEQ_MASK,
  XADC_CONF1_SEQ_CONTINUOUS);
 if (ret)
  return ret;

 return xadc_power_adc_b(xadc, XADC_CONF1_SEQ_CONTINUOUS);
}
