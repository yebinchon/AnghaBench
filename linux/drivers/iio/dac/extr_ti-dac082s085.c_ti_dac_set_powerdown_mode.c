
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_dac_chip {unsigned int powerdown_mode; int lock; scalar_t__ powerdown; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int POWERDOWN (unsigned int) ;
 struct ti_dac_chip* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ti_dac_cmd (struct ti_dac_chip*,int ,int ) ;

__attribute__((used)) static int ti_dac_set_powerdown_mode(struct iio_dev *indio_dev,
         const struct iio_chan_spec *chan,
         unsigned int mode)
{
 struct ti_dac_chip *ti_dac = iio_priv(indio_dev);
 int ret = 0;

 if (ti_dac->powerdown_mode == mode)
  return 0;

 mutex_lock(&ti_dac->lock);
 if (ti_dac->powerdown) {
  ret = ti_dac_cmd(ti_dac, POWERDOWN(mode), 0);
  if (ret)
   goto out;
 }
 ti_dac->powerdown_mode = mode;

out:
 mutex_unlock(&ti_dac->lock);
 return ret;
}
