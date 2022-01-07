
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;
struct adf4371_state {int regmap; TYPE_1__* spi; } ;
typedef int ssize_t ;
struct TYPE_4__ {unsigned int reg; unsigned int bit; } ;
struct TYPE_3__ {int dev; } ;





 unsigned int ADF4371_REG (int) ;
 unsigned int BIT (unsigned int) ;
 int EBUSY ;
 int EINVAL ;
 char** adf4371_ch_names ;
 unsigned long long adf4371_pll_fract_n_get_rate (struct adf4371_state*,size_t) ;
 TYPE_2__* adf4371_pwrdown_ch ;
 int dev_dbg (int *,char*) ;
 struct adf4371_state* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,unsigned int,unsigned int*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t adf4371_read(struct iio_dev *indio_dev,
       uintptr_t private,
       const struct iio_chan_spec *chan,
       char *buf)
{
 struct adf4371_state *st = iio_priv(indio_dev);
 unsigned long long val = 0;
 unsigned int readval, reg, bit;
 int ret;

 switch ((u32)private) {
 case 129:
  val = adf4371_pll_fract_n_get_rate(st, chan->channel);
  ret = regmap_read(st->regmap, ADF4371_REG(0x7C), &readval);
  if (ret < 0)
   break;

  if (readval == 0x00) {
   dev_dbg(&st->spi->dev, "PLL un-locked\n");
   ret = -EBUSY;
  }
  break;
 case 128:
  reg = adf4371_pwrdown_ch[chan->channel].reg;
  bit = adf4371_pwrdown_ch[chan->channel].bit;

  ret = regmap_read(st->regmap, reg, &readval);
  if (ret < 0)
   break;

  val = !(readval & BIT(bit));
  break;
 case 130:
  return sprintf(buf, "%s\n", adf4371_ch_names[chan->channel]);
 default:
  ret = -EINVAL;
  val = 0;
  break;
 }

 return ret < 0 ? ret : sprintf(buf, "%llu\n", val);
}
