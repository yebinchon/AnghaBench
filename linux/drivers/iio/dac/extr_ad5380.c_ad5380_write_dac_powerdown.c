
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int mlock; } ;
struct iio_chan_spec {int dummy; } ;
struct ad5380_state {int pwr_down; int regmap; } ;
typedef int ssize_t ;


 int AD5380_REG_SF_PWR_DOWN ;
 int AD5380_REG_SF_PWR_UP ;
 struct ad5380_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_write (int ,int ,int ) ;
 int strtobool (char const*,int*) ;

__attribute__((used)) static ssize_t ad5380_write_dac_powerdown(struct iio_dev *indio_dev,
  uintptr_t private, const struct iio_chan_spec *chan, const char *buf,
  size_t len)
{
 struct ad5380_state *st = iio_priv(indio_dev);
 bool pwr_down;
 int ret;

 ret = strtobool(buf, &pwr_down);
 if (ret)
  return ret;

 mutex_lock(&indio_dev->mlock);

 if (pwr_down)
  ret = regmap_write(st->regmap, AD5380_REG_SF_PWR_DOWN, 0);
 else
  ret = regmap_write(st->regmap, AD5380_REG_SF_PWR_UP, 0);

 st->pwr_down = pwr_down;

 mutex_unlock(&indio_dev->mlock);

 return ret ? ret : len;
}
