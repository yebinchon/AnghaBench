
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct fxas21002c_data {int dready_trig; int * regmap_fields; } ;
typedef int irqreturn_t ;


 size_t F_SRC_DRDY ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 struct fxas21002c_data* iio_priv (struct iio_dev*) ;
 int iio_trigger_poll_chained (int ) ;
 int regmap_field_read (int ,unsigned int*) ;

__attribute__((used)) static irqreturn_t fxas21002c_data_rdy_thread(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct fxas21002c_data *data = iio_priv(indio_dev);
 unsigned int data_ready;
 int ret;

 ret = regmap_field_read(data->regmap_fields[F_SRC_DRDY], &data_ready);
 if (ret < 0)
  return IRQ_NONE;

 if (!data_ready)
  return IRQ_NONE;

 iio_trigger_poll_chained(data->dready_trig);

 return IRQ_HANDLED;
}
