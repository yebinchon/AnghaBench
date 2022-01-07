
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xadc {int* threshold; int temp_hysteresis; int mutex; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;


 scalar_t__ IIO_TEMP ;
 int XADC_REG_THRESHOLD (unsigned int) ;
 int XADC_THRESHOLD_VALUE_SHIFT ;
 int _xadc_write_adc_reg (struct xadc*,int ,int) ;
 struct xadc* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned int xadc_get_threshold_offset (struct iio_chan_spec const*,int) ;

int xadc_write_event_value(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, enum iio_event_type type,
 enum iio_event_direction dir, enum iio_event_info info,
 int val, int val2)
{
 unsigned int offset = xadc_get_threshold_offset(chan, dir);
 struct xadc *xadc = iio_priv(indio_dev);
 int ret = 0;

 val <<= XADC_THRESHOLD_VALUE_SHIFT;

 if (val < 0 || val > 0xffff)
  return -EINVAL;

 mutex_lock(&xadc->mutex);

 switch (info) {
 case 128:
  xadc->threshold[offset] = val;
  break;
 case 129:
  xadc->temp_hysteresis = val;
  break;
 default:
  mutex_unlock(&xadc->mutex);
  return -EINVAL;
 }

 if (chan->type == IIO_TEMP) {





  val |= 0x3;







  if (xadc->threshold[offset] < xadc->temp_hysteresis)
   xadc->threshold[offset + 4] = 0;
  else
   xadc->threshold[offset + 4] = xadc->threshold[offset] -
     xadc->temp_hysteresis;
  ret = _xadc_write_adc_reg(xadc, XADC_REG_THRESHOLD(offset + 4),
   xadc->threshold[offset + 4]);
  if (ret)
   goto out_unlock;
 }

 if (info == 128)
  ret = _xadc_write_adc_reg(xadc, XADC_REG_THRESHOLD(offset), val);

out_unlock:
 mutex_unlock(&xadc->mutex);

 return ret;
}
