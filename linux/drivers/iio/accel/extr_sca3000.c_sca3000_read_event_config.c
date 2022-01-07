
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sca3000_state {int* rx; int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel2; size_t address; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;




 int SCA3000_REG_CTRL_SEL_MD_CTRL ;
 int SCA3000_REG_MODE_ADDR ;
 int SCA3000_REG_MODE_FREE_FALL_DETECT ;
 int SCA3000_REG_MODE_MEAS_MODE_MOT_DET ;
 int SCA3000_REG_MODE_MODE_MASK ;
 struct sca3000_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int** sca3000_addresses ;
 int sca3000_read_ctrl_reg (struct sca3000_state*,int ) ;
 int sca3000_read_data_short (struct sca3000_state*,int ,int) ;

__attribute__((used)) static int sca3000_read_event_config(struct iio_dev *indio_dev,
         const struct iio_chan_spec *chan,
         enum iio_event_type type,
         enum iio_event_direction dir)
{
 struct sca3000_state *st = iio_priv(indio_dev);
 int ret;

 mutex_lock(&st->lock);

 ret = sca3000_read_data_short(st, SCA3000_REG_MODE_ADDR, 1);
 if (ret)
  goto error_ret;

 switch (chan->channel2) {
 case 130:
  ret = !!(st->rx[0] & SCA3000_REG_MODE_FREE_FALL_DETECT);
  break;
 case 131:
 case 129:
 case 128:




  if ((st->rx[0] & SCA3000_REG_MODE_MODE_MASK)
      != SCA3000_REG_MODE_MEAS_MODE_MOT_DET) {
   ret = 0;
  } else {
   ret = sca3000_read_ctrl_reg(st,
      SCA3000_REG_CTRL_SEL_MD_CTRL);
   if (ret < 0)
    goto error_ret;

   ret = !!(ret & sca3000_addresses[chan->address][2]);
  }
  break;
 default:
  ret = -EINVAL;
 }

error_ret:
 mutex_unlock(&st->lock);

 return ret;
}
