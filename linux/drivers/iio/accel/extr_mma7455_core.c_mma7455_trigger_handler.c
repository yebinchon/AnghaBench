
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mma7455_data {int regmap; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
typedef int irqreturn_t ;
typedef int __le16 ;


 int IRQ_HANDLED ;
 int MMA7455_REG_XOUTL ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct mma7455_data* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int *,int ) ;
 int iio_trigger_notify_done (int ) ;
 int mma7455_drdy (struct mma7455_data*) ;
 int regmap_bulk_read (int ,int ,int *,int) ;

__attribute__((used)) static irqreturn_t mma7455_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct mma7455_data *mma7455 = iio_priv(indio_dev);
 u8 buf[16];
 int ret;

 ret = mma7455_drdy(mma7455);
 if (ret)
  goto done;

 ret = regmap_bulk_read(mma7455->regmap, MMA7455_REG_XOUTL, buf,
          sizeof(__le16) * 3);
 if (ret)
  goto done;

 iio_push_to_buffers_with_timestamp(indio_dev, buf,
        iio_get_time_ns(indio_dev));

done:
 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
