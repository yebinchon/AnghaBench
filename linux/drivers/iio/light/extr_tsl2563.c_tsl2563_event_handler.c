
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsl2563_chip {int client; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IIO_EV_DIR_EITHER ;
 int IIO_EV_TYPE_THRESH ;
 int IIO_INTENSITY ;
 int IIO_UNMOD_EVENT_CODE (int ,int ,int ,int ) ;
 int IRQ_HANDLED ;
 int TSL2563_CLEARINT ;
 int TSL2563_CMD ;
 int i2c_smbus_write_byte (int ,int) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct tsl2563_chip* iio_priv (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;

__attribute__((used)) static irqreturn_t tsl2563_event_handler(int irq, void *private)
{
 struct iio_dev *dev_info = private;
 struct tsl2563_chip *chip = iio_priv(dev_info);

 iio_push_event(dev_info,
         IIO_UNMOD_EVENT_CODE(IIO_INTENSITY,
         0,
         IIO_EV_TYPE_THRESH,
         IIO_EV_DIR_EITHER),
         iio_get_time_ns(dev_info));


 i2c_smbus_write_byte(chip->client, TSL2563_CMD | TSL2563_CLEARINT);
 return IRQ_HANDLED;
}
