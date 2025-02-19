
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
struct adc081c {int i2c; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int REG_CONV_RES ;
 int i2c_smbus_read_word_swapped (int ,int ) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct adc081c* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int*,int ) ;
 int iio_trigger_notify_done (int ) ;

__attribute__((used)) static irqreturn_t adc081c_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct adc081c *data = iio_priv(indio_dev);
 u16 buf[8];
 int ret;

 ret = i2c_smbus_read_word_swapped(data->i2c, REG_CONV_RES);
 if (ret < 0)
  goto out;
 buf[0] = ret;
 iio_push_to_buffers_with_timestamp(indio_dev, buf,
        iio_get_time_ns(indio_dev));
out:
 iio_trigger_notify_done(indio_dev->trig);
 return IRQ_HANDLED;
}
