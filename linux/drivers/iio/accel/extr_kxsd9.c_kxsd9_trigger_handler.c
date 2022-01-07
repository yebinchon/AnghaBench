
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kxsd9_state {int dev; int map; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
typedef int irqreturn_t ;
typedef int __be16 ;


 int IRQ_HANDLED ;
 int KXSD9_REG_X ;
 int dev_err (int ,char*) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct kxsd9_state* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int *,int ) ;
 int iio_trigger_notify_done (int ) ;
 int regmap_bulk_read (int ,int ,int **,int) ;

__attribute__((used)) static irqreturn_t kxsd9_trigger_handler(int irq, void *p)
{
 const struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct kxsd9_state *st = iio_priv(indio_dev);
 int ret;

 __be16 hw_values[8];

 ret = regmap_bulk_read(st->map,
          KXSD9_REG_X,
          &hw_values,
          8);
 if (ret) {
  dev_err(st->dev,
   "error reading data\n");
  return ret;
 }

 iio_push_to_buffers_with_timestamp(indio_dev,
        hw_values,
        iio_get_time_ns(indio_dev));
 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
