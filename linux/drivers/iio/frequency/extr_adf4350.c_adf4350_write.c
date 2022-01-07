
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iio_dev {int mlock; } ;
struct iio_chan_spec {int dummy; } ;
struct adf4350_state {unsigned long long clkin; unsigned long long freq_req; unsigned long long chspc; int * regs; int clk; } ;
typedef int ssize_t ;





 unsigned long long ADF4350_MAX_FREQ_REFIN ;

 size_t ADF4350_REG2 ;
 int ADF4350_REG2_POWER_DOWN_EN ;
 int EINVAL ;
 int adf4350_set_freq (struct adf4350_state*,unsigned long long) ;
 int adf4350_sync_config (struct adf4350_state*) ;
 unsigned long clk_round_rate (int ,unsigned long long) ;
 int clk_set_rate (int ,unsigned long) ;
 struct adf4350_state* iio_priv (struct iio_dev*) ;
 int kstrtoull (char const*,int,unsigned long long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t adf4350_write(struct iio_dev *indio_dev,
        uintptr_t private,
        const struct iio_chan_spec *chan,
        const char *buf, size_t len)
{
 struct adf4350_state *st = iio_priv(indio_dev);
 unsigned long long readin;
 unsigned long tmp;
 int ret;

 ret = kstrtoull(buf, 10, &readin);
 if (ret)
  return ret;

 mutex_lock(&indio_dev->mlock);
 switch ((u32)private) {
 case 131:
  ret = adf4350_set_freq(st, readin);
  break;
 case 130:
  if (readin > ADF4350_MAX_FREQ_REFIN) {
   ret = -EINVAL;
   break;
  }

  if (st->clk) {
   tmp = clk_round_rate(st->clk, readin);
   if (tmp != readin) {
    ret = -EINVAL;
    break;
   }
   ret = clk_set_rate(st->clk, tmp);
   if (ret < 0)
    break;
  }
  st->clkin = readin;
  ret = adf4350_set_freq(st, st->freq_req);
  break;
 case 129:
  if (readin == 0)
   ret = -EINVAL;
  else
   st->chspc = readin;
  break;
 case 128:
  if (readin)
   st->regs[ADF4350_REG2] |= ADF4350_REG2_POWER_DOWN_EN;
  else
   st->regs[ADF4350_REG2] &= ~ADF4350_REG2_POWER_DOWN_EN;

  adf4350_sync_config(st);
  break;
 default:
  ret = -EINVAL;
 }
 mutex_unlock(&indio_dev->mlock);

 return ret ? ret : len;
}
