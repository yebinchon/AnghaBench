
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct apds9960_data {int regmap; scalar_t__ pxs_int; scalar_t__ als_int; TYPE_1__* client; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int APDS9960_REG_CICLEAR ;
 int APDS9960_REG_PICLEAR ;
 int APDS9960_REG_STATUS ;
 int APDS9960_REG_STATUS_ALS_INT ;
 int APDS9960_REG_STATUS_GINT ;
 int APDS9960_REG_STATUS_PS_INT ;
 int IIO_EV_DIR_EITHER ;
 int IIO_EV_TYPE_THRESH ;
 int IIO_INTENSITY ;
 int IIO_PROXIMITY ;
 int IIO_UNMOD_EVENT_CODE (int ,int ,int ,int ) ;
 int IRQ_HANDLED ;
 int apds9960_read_gesture_fifo (struct apds9960_data*) ;
 int dev_err (int *,char*) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct apds9960_data* iio_priv (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static irqreturn_t apds9960_interrupt_handler(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct apds9960_data *data = iio_priv(indio_dev);
 int ret, status;

 ret = regmap_read(data->regmap, APDS9960_REG_STATUS, &status);
 if (ret < 0) {
  dev_err(&data->client->dev, "irq status reg read failed\n");
  return IRQ_HANDLED;
 }

 if ((status & APDS9960_REG_STATUS_ALS_INT) && data->als_int) {
  iio_push_event(indio_dev,
          IIO_UNMOD_EVENT_CODE(IIO_INTENSITY, 0,
          IIO_EV_TYPE_THRESH,
          IIO_EV_DIR_EITHER),
          iio_get_time_ns(indio_dev));
  regmap_write(data->regmap, APDS9960_REG_CICLEAR, 1);
 }

 if ((status & APDS9960_REG_STATUS_PS_INT) && data->pxs_int) {
  iio_push_event(indio_dev,
          IIO_UNMOD_EVENT_CODE(IIO_PROXIMITY, 0,
          IIO_EV_TYPE_THRESH,
          IIO_EV_DIR_EITHER),
          iio_get_time_ns(indio_dev));
  regmap_write(data->regmap, APDS9960_REG_PICLEAR, 1);
 }

 if (status & APDS9960_REG_STATUS_GINT)
  apds9960_read_gesture_fifo(data);

 return IRQ_HANDLED;
}
