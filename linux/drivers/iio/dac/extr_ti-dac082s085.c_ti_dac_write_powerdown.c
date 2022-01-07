
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_dac_chip {int powerdown; int lock; int * val; int powerdown_mode; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef int ssize_t ;


 int POWERDOWN (int ) ;
 int WRITE_AND_UPDATE (int ) ;
 struct ti_dac_chip* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strtobool (char const*,int*) ;
 int ti_dac_cmd (struct ti_dac_chip*,int ,int ) ;

__attribute__((used)) static ssize_t ti_dac_write_powerdown(struct iio_dev *indio_dev,
          uintptr_t private,
          const struct iio_chan_spec *chan,
          const char *buf, size_t len)
{
 struct ti_dac_chip *ti_dac = iio_priv(indio_dev);
 bool powerdown;
 int ret;

 ret = strtobool(buf, &powerdown);
 if (ret)
  return ret;

 if (ti_dac->powerdown == powerdown)
  return len;

 mutex_lock(&ti_dac->lock);
 if (powerdown)
  ret = ti_dac_cmd(ti_dac, POWERDOWN(ti_dac->powerdown_mode), 0);
 else
  ret = ti_dac_cmd(ti_dac, WRITE_AND_UPDATE(0), ti_dac->val[0]);
 if (!ret)
  ti_dac->powerdown = powerdown;
 mutex_unlock(&ti_dac->lock);

 return ret ? ret : len;
}
