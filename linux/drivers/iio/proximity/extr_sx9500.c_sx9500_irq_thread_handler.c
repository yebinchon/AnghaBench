
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sx9500_data {int mutex; int completion; TYPE_1__* client; int regmap; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 unsigned int SX9500_CLOSE_IRQ ;
 unsigned int SX9500_CONVDONE_IRQ ;
 unsigned int SX9500_FAR_IRQ ;
 int SX9500_REG_IRQ_SRC ;
 int complete (int *) ;
 int dev_err (int *,char*) ;
 struct sx9500_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int sx9500_push_events (struct iio_dev*) ;

__attribute__((used)) static irqreturn_t sx9500_irq_thread_handler(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct sx9500_data *data = iio_priv(indio_dev);
 int ret;
 unsigned int val;

 mutex_lock(&data->mutex);

 ret = regmap_read(data->regmap, SX9500_REG_IRQ_SRC, &val);
 if (ret < 0) {
  dev_err(&data->client->dev, "i2c transfer error in irq\n");
  goto out;
 }

 if (val & (SX9500_CLOSE_IRQ | SX9500_FAR_IRQ))
  sx9500_push_events(indio_dev);

 if (val & SX9500_CONVDONE_IRQ)
  complete(&data->completion);

out:
 mutex_unlock(&data->mutex);

 return IRQ_HANDLED;
}
