
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct ad799x_state {int client; } ;
typedef int irqreturn_t ;


 int AD7998_ALERT_STAT_CLEAR ;
 int AD7998_ALERT_STAT_REG ;
 int BIT (int) ;
 int IIO_EV_DIR_FALLING ;
 int IIO_EV_DIR_RISING ;
 int IIO_EV_TYPE_THRESH ;
 int IIO_UNMOD_EVENT_CODE (int ,int,int ,int ) ;
 int IIO_VOLTAGE ;
 int IRQ_HANDLED ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 scalar_t__ i2c_smbus_write_byte_data (int ,int ,int ) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct ad799x_state* iio_priv (void*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;

__attribute__((used)) static irqreturn_t ad799x_event_handler(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct ad799x_state *st = iio_priv(private);
 int i, ret;

 ret = i2c_smbus_read_byte_data(st->client, AD7998_ALERT_STAT_REG);
 if (ret <= 0)
  goto done;

 if (i2c_smbus_write_byte_data(st->client, AD7998_ALERT_STAT_REG,
  AD7998_ALERT_STAT_CLEAR) < 0)
  goto done;

 for (i = 0; i < 8; i++) {
  if (ret & BIT(i))
   iio_push_event(indio_dev,
           i & 0x1 ?
           IIO_UNMOD_EVENT_CODE(IIO_VOLTAGE,
           (i >> 1),
           IIO_EV_TYPE_THRESH,
           IIO_EV_DIR_RISING) :
           IIO_UNMOD_EVENT_CODE(IIO_VOLTAGE,
           (i >> 1),
           IIO_EV_TYPE_THRESH,
           IIO_EV_DIR_FALLING),
           iio_get_time_ns(indio_dev));
 }

done:
 return IRQ_HANDLED;
}
