
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ltr501_data {TYPE_1__* client; int regmap; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IIO_EV_DIR_EITHER ;
 int IIO_EV_TYPE_THRESH ;
 int IIO_INTENSITY ;
 int IIO_PROXIMITY ;
 int IIO_UNMOD_EVENT_CODE (int ,int ,int ,int ) ;
 int IRQ_HANDLED ;
 int LTR501_ALS_PS_STATUS ;
 int LTR501_STATUS_ALS_INTR ;
 int LTR501_STATUS_PS_INTR ;
 int dev_err (int *,char*) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct ltr501_data* iio_priv (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static irqreturn_t ltr501_interrupt_handler(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct ltr501_data *data = iio_priv(indio_dev);
 int ret, status;

 ret = regmap_read(data->regmap, LTR501_ALS_PS_STATUS, &status);
 if (ret < 0) {
  dev_err(&data->client->dev,
   "irq read int reg failed\n");
  return IRQ_HANDLED;
 }

 if (status & LTR501_STATUS_ALS_INTR)
  iio_push_event(indio_dev,
          IIO_UNMOD_EVENT_CODE(IIO_INTENSITY, 0,
          IIO_EV_TYPE_THRESH,
          IIO_EV_DIR_EITHER),
          iio_get_time_ns(indio_dev));

 if (status & LTR501_STATUS_PS_INTR)
  iio_push_event(indio_dev,
          IIO_UNMOD_EVENT_CODE(IIO_PROXIMITY, 0,
          IIO_EV_TYPE_THRESH,
          IIO_EV_DIR_EITHER),
          iio_get_time_ns(indio_dev));

 return IRQ_HANDLED;
}
