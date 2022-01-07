
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct stk3310_data {int lock; TYPE_1__* client; int reg_flag_psint; int timestamp; int reg_flag_nf; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IIO_EV_DIR_FALLING ;
 int IIO_EV_DIR_RISING ;
 int IIO_EV_TYPE_THRESH ;
 int IIO_PROXIMITY ;
 int IIO_UNMOD_EVENT_CODE (int ,int,int ,int ) ;
 int IRQ_HANDLED ;
 int dev_err (int *,char*) ;
 struct stk3310_data* iio_priv (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_field_read (int ,unsigned int*) ;
 int regmap_field_write (int ,int ) ;

__attribute__((used)) static irqreturn_t stk3310_irq_event_handler(int irq, void *private)
{
 int ret;
 unsigned int dir;
 u64 event;

 struct iio_dev *indio_dev = private;
 struct stk3310_data *data = iio_priv(indio_dev);


 mutex_lock(&data->lock);
 ret = regmap_field_read(data->reg_flag_nf, &dir);
 if (ret < 0) {
  dev_err(&data->client->dev, "register read failed\n");
  mutex_unlock(&data->lock);
  return ret;
 }
 event = IIO_UNMOD_EVENT_CODE(IIO_PROXIMITY, 1,
         IIO_EV_TYPE_THRESH,
         (dir ? IIO_EV_DIR_FALLING :
         IIO_EV_DIR_RISING));
 iio_push_event(indio_dev, event, data->timestamp);


 ret = regmap_field_write(data->reg_flag_psint, 0);
 if (ret < 0)
  dev_err(&data->client->dev, "failed to reset interrupts\n");
 mutex_unlock(&data->lock);

 return IRQ_HANDLED;
}
