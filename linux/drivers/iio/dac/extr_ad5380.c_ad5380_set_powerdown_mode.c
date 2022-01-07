
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct ad5380_state {int regmap; } ;


 int AD5380_CTRL_PWR_DOWN_MODE_OFFSET ;
 int AD5380_REG_SF_CTRL ;
 struct ad5380_state* iio_priv (struct iio_dev*) ;
 int regmap_update_bits (int ,int ,int,unsigned int) ;

__attribute__((used)) static int ad5380_set_powerdown_mode(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, unsigned int mode)
{
 struct ad5380_state *st = iio_priv(indio_dev);
 int ret;

 ret = regmap_update_bits(st->regmap, AD5380_REG_SF_CTRL,
  1 << AD5380_CTRL_PWR_DOWN_MODE_OFFSET,
  mode << AD5380_CTRL_PWR_DOWN_MODE_OFFSET);

 return ret;
}
