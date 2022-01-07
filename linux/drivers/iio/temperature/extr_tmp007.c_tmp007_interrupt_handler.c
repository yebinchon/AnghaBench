
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmp007_data {int client; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IIO_EV_DIR_FALLING ;
 int IIO_EV_DIR_RISING ;
 int IIO_EV_TYPE_THRESH ;
 int IIO_MOD_EVENT_CODE (int ,int ,int ,int ,int ) ;
 int IIO_MOD_TEMP_AMBIENT ;
 int IIO_MOD_TEMP_OBJECT ;
 int IIO_TEMP ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int TMP007_STATUS ;
 int TMP007_STATUS_LHF ;
 int TMP007_STATUS_LLF ;
 int TMP007_STATUS_OHF ;
 int TMP007_STATUS_OLF ;
 int i2c_smbus_read_word_swapped (int ,int ) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct tmp007_data* iio_priv (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;

__attribute__((used)) static irqreturn_t tmp007_interrupt_handler(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct tmp007_data *data = iio_priv(indio_dev);
 int ret;

 ret = i2c_smbus_read_word_swapped(data->client, TMP007_STATUS);
 if ((ret < 0) || !(ret & (TMP007_STATUS_OHF | TMP007_STATUS_OLF |
    TMP007_STATUS_LHF | TMP007_STATUS_LLF)))
  return IRQ_NONE;

 if (ret & TMP007_STATUS_OHF)
  iio_push_event(indio_dev,
    IIO_MOD_EVENT_CODE(IIO_TEMP, 0,
     IIO_MOD_TEMP_OBJECT,
     IIO_EV_TYPE_THRESH,
     IIO_EV_DIR_RISING),
    iio_get_time_ns(indio_dev));

 if (ret & TMP007_STATUS_OLF)
  iio_push_event(indio_dev,
    IIO_MOD_EVENT_CODE(IIO_TEMP, 0,
     IIO_MOD_TEMP_OBJECT,
     IIO_EV_TYPE_THRESH,
     IIO_EV_DIR_FALLING),
    iio_get_time_ns(indio_dev));

 if (ret & TMP007_STATUS_LHF)
  iio_push_event(indio_dev,
    IIO_MOD_EVENT_CODE(IIO_TEMP, 0,
     IIO_MOD_TEMP_AMBIENT,
     IIO_EV_TYPE_THRESH,
     IIO_EV_DIR_RISING),
    iio_get_time_ns(indio_dev));

 if (ret & TMP007_STATUS_LLF)
  iio_push_event(indio_dev,
    IIO_MOD_EVENT_CODE(IIO_TEMP, 0,
     IIO_MOD_TEMP_AMBIENT,
     IIO_EV_TYPE_THRESH,
     IIO_EV_DIR_FALLING),
    iio_get_time_ns(indio_dev));

 return IRQ_HANDLED;
}
