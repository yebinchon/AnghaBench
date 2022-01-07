
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sca3000_state {int* rx; } ;
struct iio_dev {int dummy; } ;


 int SCA3000_REG_MODE_ADDR ;
 int SCA3000_REG_MODE_FREE_FALL_DETECT ;
 struct sca3000_state* iio_priv (struct iio_dev*) ;
 int sca3000_read_data_short (struct sca3000_state*,int ,int) ;
 int sca3000_write_reg (struct sca3000_state*,int ,int) ;

__attribute__((used)) static int sca3000_freefall_set_state(struct iio_dev *indio_dev, int state)
{
 struct sca3000_state *st = iio_priv(indio_dev);
 int ret;


 ret = sca3000_read_data_short(st, SCA3000_REG_MODE_ADDR, 1);
 if (ret)
  return ret;


 if (state && !(st->rx[0] & SCA3000_REG_MODE_FREE_FALL_DETECT))
  return sca3000_write_reg(st, SCA3000_REG_MODE_ADDR,
      st->rx[0] | SCA3000_REG_MODE_FREE_FALL_DETECT);

 else if (!state && (st->rx[0] & SCA3000_REG_MODE_FREE_FALL_DETECT))
  return sca3000_write_reg(st, SCA3000_REG_MODE_ADDR,
      st->rx[0] & ~SCA3000_REG_MODE_FREE_FALL_DETECT);
 else
  return 0;
}
