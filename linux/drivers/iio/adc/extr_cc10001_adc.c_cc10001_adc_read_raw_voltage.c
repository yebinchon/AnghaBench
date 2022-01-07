
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct cc10001_adc_device {unsigned int eoc_delay_ns; int shared; } ;


 unsigned int CC10001_MAX_POLL_COUNT ;
 int cc10001_adc_poll_done (struct iio_dev*,int ,unsigned int) ;
 int cc10001_adc_power_down (struct cc10001_adc_device*) ;
 int cc10001_adc_power_up (struct cc10001_adc_device*) ;
 int cc10001_adc_start (struct cc10001_adc_device*,int ) ;
 struct cc10001_adc_device* iio_priv (struct iio_dev*) ;

__attribute__((used)) static u16 cc10001_adc_read_raw_voltage(struct iio_dev *indio_dev,
     struct iio_chan_spec const *chan)
{
 struct cc10001_adc_device *adc_dev = iio_priv(indio_dev);
 unsigned int delay_ns;
 u16 val;

 if (!adc_dev->shared)
  cc10001_adc_power_up(adc_dev);


 delay_ns = adc_dev->eoc_delay_ns / CC10001_MAX_POLL_COUNT;

 cc10001_adc_start(adc_dev, chan->channel);

 val = cc10001_adc_poll_done(indio_dev, chan->channel, delay_ns);

 if (!adc_dev->shared)
  cc10001_adc_power_down(adc_dev);

 return val;
}
