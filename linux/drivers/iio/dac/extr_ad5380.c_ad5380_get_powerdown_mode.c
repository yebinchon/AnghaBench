
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct ad5380_state {int regmap; } ;


 unsigned int AD5380_CTRL_PWR_DOWN_MODE_OFFSET ;
 int AD5380_REG_SF_CTRL ;
 struct ad5380_state* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int ad5380_get_powerdown_mode(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan)
{
 struct ad5380_state *st = iio_priv(indio_dev);
 unsigned int mode;
 int ret;

 ret = regmap_read(st->regmap, AD5380_REG_SF_CTRL, &mode);
 if (ret)
  return ret;

 mode = (mode >> AD5380_CTRL_PWR_DOWN_MODE_OFFSET) & 1;

 return mode;
}
