
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct ad5758_state {int pwr_down; int lock; } ;
typedef int ssize_t ;


 int AD5758_DAC_CONFIG ;
 unsigned int AD5758_DAC_CONFIG_INT_EN_MODE (unsigned int) ;
 unsigned long AD5758_DAC_CONFIG_INT_EN_MSK ;
 unsigned int AD5758_DAC_CONFIG_OUT_EN_MODE (unsigned int) ;
 unsigned long AD5758_DAC_CONFIG_OUT_EN_MSK ;
 int ad5758_spi_write_mask (struct ad5758_state*,int ,unsigned long,unsigned int) ;
 struct ad5758_state* iio_priv (struct iio_dev*) ;
 int kstrtobool (char const*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t ad5758_write_powerdown(struct iio_dev *indio_dev,
          uintptr_t priv,
          struct iio_chan_spec const *chan,
          const char *buf, size_t len)
{
 struct ad5758_state *st = iio_priv(indio_dev);
 bool pwr_down;
 unsigned int dac_config_mode, val;
 unsigned long int dac_config_msk;
 int ret;

 ret = kstrtobool(buf, &pwr_down);
 if (ret)
  return ret;

 mutex_lock(&st->lock);
 if (pwr_down)
  val = 0;
 else
  val = 1;

 dac_config_mode = AD5758_DAC_CONFIG_OUT_EN_MODE(val) |
     AD5758_DAC_CONFIG_INT_EN_MODE(val);
 dac_config_msk = AD5758_DAC_CONFIG_OUT_EN_MSK |
    AD5758_DAC_CONFIG_INT_EN_MSK;

 ret = ad5758_spi_write_mask(st, AD5758_DAC_CONFIG,
        dac_config_msk,
        dac_config_mode);
 if (ret < 0)
  goto err_unlock;

 st->pwr_down = pwr_down;

err_unlock:
 mutex_unlock(&st->lock);

 return ret ? ret : len;
}
