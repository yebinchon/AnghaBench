
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct us5182d_data {TYPE_1__* client; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;
struct TYPE_3__ {int dev; } ;


 int IIO_EV_DIR_FALLING ;
 int IIO_EV_DIR_RISING ;
 int IIO_EV_TYPE_THRESH ;
 int IIO_PROXIMITY ;
 int IIO_UNMOD_EVENT_CODE (int ,int,int ,int) ;
 int IRQ_HANDLED ;
 int US5182D_CFG0_PROX ;
 int US5182D_CFG0_PX_IRQ ;
 int US5182D_REG_CFG0 ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int ) ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int ,int) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct us5182d_data* iio_priv (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;

__attribute__((used)) static irqreturn_t us5182d_irq_thread_handler(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct us5182d_data *data = iio_priv(indio_dev);
 enum iio_event_direction dir;
 int ret;
 u64 ev;

 ret = i2c_smbus_read_byte_data(data->client, US5182D_REG_CFG0);
 if (ret < 0) {
  dev_err(&data->client->dev, "i2c transfer error in irq\n");
  return IRQ_HANDLED;
 }

 dir = ret & US5182D_CFG0_PROX ? IIO_EV_DIR_RISING : IIO_EV_DIR_FALLING;
 ev = IIO_UNMOD_EVENT_CODE(IIO_PROXIMITY, 1, IIO_EV_TYPE_THRESH, dir);

 iio_push_event(indio_dev, ev, iio_get_time_ns(indio_dev));

 ret = i2c_smbus_write_byte_data(data->client, US5182D_REG_CFG0,
     ret & ~US5182D_CFG0_PX_IRQ);
 if (ret < 0)
  dev_err(&data->client->dev, "i2c transfer error in irq\n");

 return IRQ_HANDLED;
}
