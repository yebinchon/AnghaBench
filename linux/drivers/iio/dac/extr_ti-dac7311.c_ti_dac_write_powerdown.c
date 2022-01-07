
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ti_dac_chip {int powerdown; int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef int ssize_t ;


 struct ti_dac_chip* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strtobool (char const*,int*) ;
 int ti_dac_cmd (struct ti_dac_chip*,int ,int ) ;
 int ti_dac_get_power (struct ti_dac_chip*,int) ;

__attribute__((used)) static ssize_t ti_dac_write_powerdown(struct iio_dev *indio_dev,
          uintptr_t private,
          const struct iio_chan_spec *chan,
          const char *buf, size_t len)
{
 struct ti_dac_chip *ti_dac = iio_priv(indio_dev);
 bool powerdown;
 u8 power;
 int ret;

 ret = strtobool(buf, &powerdown);
 if (ret)
  return ret;

 power = ti_dac_get_power(ti_dac, powerdown);

 mutex_lock(&ti_dac->lock);
 ret = ti_dac_cmd(ti_dac, power, 0);
 if (!ret)
  ti_dac->powerdown = powerdown;
 mutex_unlock(&ti_dac->lock);

 return ret ? ret : len;
}
