
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct itg3200 {TYPE_1__* i2c; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ITG3200_IRQ_ACTIVE_HIGH ;
 int ITG3200_IRQ_LATCH_50US_PULSE ;
 int ITG3200_IRQ_LATCH_CLEAR_ANY ;
 int ITG3200_IRQ_PUSH_PULL ;
 int ITG3200_REG_IRQ_CONFIG ;
 int ITG3200_REG_POWER_MANAGEMENT ;
 int ITG3200_RESET ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 struct itg3200* iio_priv (struct iio_dev*) ;
 int itg3200_write_reg_8 (struct iio_dev*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int itg3200_reset(struct iio_dev *indio_dev)
{
 struct itg3200 *st = iio_priv(indio_dev);
 int ret;

 dev_dbg(&st->i2c->dev, "reset device");

 ret = itg3200_write_reg_8(indio_dev,
   ITG3200_REG_POWER_MANAGEMENT,
   ITG3200_RESET);
 if (ret) {
  dev_err(&st->i2c->dev, "error resetting device");
  goto error_ret;
 }


 udelay(1500);

 ret = itg3200_write_reg_8(indio_dev,
   ITG3200_REG_IRQ_CONFIG,
   ITG3200_IRQ_ACTIVE_HIGH |
   ITG3200_IRQ_PUSH_PULL |
   ITG3200_IRQ_LATCH_50US_PULSE |
   ITG3200_IRQ_LATCH_CLEAR_ANY);

 if (ret)
  dev_err(&st->i2c->dev, "error init device");

error_ret:
 return ret;
}
