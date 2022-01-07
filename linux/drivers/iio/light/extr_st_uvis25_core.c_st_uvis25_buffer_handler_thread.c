
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct st_uvis25_hw {int trig; int regmap; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int dummy; } ;
typedef int s64 ;
typedef int irqreturn_t ;


 int ALIGN (int,int) ;
 int IRQ_HANDLED ;
 int ST_UVIS25_REG_OUT_ADDR ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct st_uvis25_hw* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int *,int ) ;
 int iio_trigger_notify_done (int ) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static irqreturn_t st_uvis25_buffer_handler_thread(int irq, void *p)
{
 u8 buffer[ALIGN(sizeof(u8), sizeof(s64)) + sizeof(s64)];
 struct iio_poll_func *pf = p;
 struct iio_dev *iio_dev = pf->indio_dev;
 struct st_uvis25_hw *hw = iio_priv(iio_dev);
 int err;

 err = regmap_read(hw->regmap, ST_UVIS25_REG_OUT_ADDR, (int *)buffer);
 if (err < 0)
  goto out;

 iio_push_to_buffers_with_timestamp(iio_dev, buffer,
        iio_get_time_ns(iio_dev));

out:
 iio_trigger_notify_done(hw->trig);

 return IRQ_HANDLED;
}
