
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct xadc {unsigned int alarm_mask; int mutex; TYPE_1__* ops; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;
struct TYPE_2__ {int (* update_alarm ) (struct xadc*,unsigned int) ;} ;


 int XADC_CONF1_ALARM_MASK ;
 int XADC_REG_CONF1 ;
 int _xadc_read_adc_reg (struct xadc*,int ,int*) ;
 int _xadc_write_adc_reg (struct xadc*,int ,int) ;
 struct xadc* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct xadc*,unsigned int) ;
 unsigned int xadc_get_alarm_mask (struct iio_chan_spec const*) ;

int xadc_write_event_config(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, enum iio_event_type type,
 enum iio_event_direction dir, int state)
{
 unsigned int alarm = xadc_get_alarm_mask(chan);
 struct xadc *xadc = iio_priv(indio_dev);
 uint16_t cfg, old_cfg;
 int ret;

 mutex_lock(&xadc->mutex);

 if (state)
  xadc->alarm_mask |= alarm;
 else
  xadc->alarm_mask &= ~alarm;

 xadc->ops->update_alarm(xadc, xadc->alarm_mask);

 ret = _xadc_read_adc_reg(xadc, XADC_REG_CONF1, &cfg);
 if (ret)
  goto err_out;

 old_cfg = cfg;
 cfg |= XADC_CONF1_ALARM_MASK;
 cfg &= ~((xadc->alarm_mask & 0xf0) << 4);
 cfg &= ~((xadc->alarm_mask & 0x08) >> 3);
 cfg &= ~((xadc->alarm_mask & 0x07) << 1);
 if (old_cfg != cfg)
  ret = _xadc_write_adc_reg(xadc, XADC_REG_CONF1, cfg);

err_out:
 mutex_unlock(&xadc->mutex);

 return ret;
}
