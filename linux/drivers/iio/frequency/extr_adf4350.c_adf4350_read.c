
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long u64 ;
typedef int u32 ;
struct iio_dev {int mlock; } ;
struct iio_chan_spec {int dummy; } ;
struct adf4350_state {int r0_int; int r1_mod; int r0_fract; int r4_rf_div_sel; unsigned long long clkin; unsigned long long chspc; int* regs; int clk; TYPE_2__* spi; TYPE_1__* pdata; int fpfd; } ;
typedef int ssize_t ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int gpio_lock_detect; } ;






 size_t ADF4350_REG2 ;
 int ADF4350_REG2_POWER_DOWN_EN ;
 int EBUSY ;
 int EINVAL ;
 unsigned long long clk_get_rate (int ) ;
 int dev_dbg (int *,char*) ;
 int do_div (unsigned long long,int) ;
 int gpio_get_value (int ) ;
 int gpio_is_valid (int ) ;
 struct adf4350_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,unsigned long long) ;

__attribute__((used)) static ssize_t adf4350_read(struct iio_dev *indio_dev,
       uintptr_t private,
       const struct iio_chan_spec *chan,
       char *buf)
{
 struct adf4350_state *st = iio_priv(indio_dev);
 unsigned long long val;
 int ret = 0;

 mutex_lock(&indio_dev->mlock);
 switch ((u32)private) {
 case 131:
  val = (u64)((st->r0_int * st->r1_mod) + st->r0_fract) *
   (u64)st->fpfd;
  do_div(val, st->r1_mod * (1 << st->r4_rf_div_sel));

  if (gpio_is_valid(st->pdata->gpio_lock_detect))
   if (!gpio_get_value(st->pdata->gpio_lock_detect)) {
    dev_dbg(&st->spi->dev, "PLL un-locked\n");
    ret = -EBUSY;
   }
  break;
 case 130:
  if (st->clk)
   st->clkin = clk_get_rate(st->clk);

  val = st->clkin;
  break;
 case 129:
  val = st->chspc;
  break;
 case 128:
  val = !!(st->regs[ADF4350_REG2] & ADF4350_REG2_POWER_DOWN_EN);
  break;
 default:
  ret = -EINVAL;
  val = 0;
 }
 mutex_unlock(&indio_dev->mlock);

 return ret < 0 ? ret : sprintf(buf, "%llu\n", val);
}
