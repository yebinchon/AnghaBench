
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mcp320x {int lock; TYPE_1__* chip_info; int reg; int spi; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int differential; int address; } ;
struct TYPE_4__ {int driver_data; } ;
struct TYPE_3__ {int resolution; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 struct mcp320x* iio_priv (struct iio_dev*) ;
 int mcp320x_adc_conversion (struct mcp320x*,int ,int ,int,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_get_voltage (int ) ;
 TYPE_2__* spi_get_device_id (int ) ;

__attribute__((used)) static int mcp320x_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *channel, int *val,
       int *val2, long mask)
{
 struct mcp320x *adc = iio_priv(indio_dev);
 int ret = -EINVAL;
 int device_index = 0;

 mutex_lock(&adc->lock);

 device_index = spi_get_device_id(adc->spi)->driver_data;

 switch (mask) {
 case 129:
  ret = mcp320x_adc_conversion(adc, channel->address,
   channel->differential, device_index, val);
  if (ret < 0)
   goto out;

  ret = IIO_VAL_INT;
  break;

 case 128:
  ret = regulator_get_voltage(adc->reg);
  if (ret < 0)
   goto out;


  *val = ret / 1000;
  *val2 = adc->chip_info->resolution;
  ret = IIO_VAL_FRACTIONAL_LOG2;
  break;
 }

out:
 mutex_unlock(&adc->lock);

 return ret;
}
