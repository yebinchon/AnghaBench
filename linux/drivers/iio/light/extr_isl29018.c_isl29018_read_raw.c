
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scale; int uscale; } ;
struct isl29018_chip {size_t type; size_t int_time; int calibscale; int ucalibscale; int lock; TYPE_1__ scale; int prox_scheme; scalar_t__ suspended; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int const type; } ;


 int EBUSY ;
 int EINVAL ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 struct isl29018_chip* iio_priv (struct iio_dev*) ;
 int** isl29018_int_utimes ;
 int isl29018_read_ir (struct isl29018_chip*,int*) ;
 int isl29018_read_lux (struct isl29018_chip*,int*) ;
 int isl29018_read_proximity_ir (struct isl29018_chip*,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int isl29018_read_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int *val,
        int *val2,
        long mask)
{
 int ret = -EINVAL;
 struct isl29018_chip *chip = iio_priv(indio_dev);

 mutex_lock(&chip->lock);
 if (chip->suspended) {
  ret = -EBUSY;
  goto read_done;
 }
 switch (mask) {
 case 132:
 case 133:
  switch (chan->type) {
  case 129:
   ret = isl29018_read_lux(chip, val);
   break;
  case 130:
   ret = isl29018_read_ir(chip, val);
   break;
  case 128:
   ret = isl29018_read_proximity_ir(chip,
        chip->prox_scheme,
        val);
   break;
  default:
   break;
  }
  if (!ret)
   ret = IIO_VAL_INT;
  break;
 case 134:
  if (chan->type == 129) {
   *val = 0;
   *val2 = isl29018_int_utimes[chip->type][chip->int_time];
   ret = IIO_VAL_INT_PLUS_MICRO;
  }
  break;
 case 131:
  if (chan->type == 129) {
   *val = chip->scale.scale;
   *val2 = chip->scale.uscale;
   ret = IIO_VAL_INT_PLUS_MICRO;
  }
  break;
 case 135:
  if (chan->type == 129) {
   *val = chip->calibscale;
   *val2 = chip->ucalibscale;
   ret = IIO_VAL_INT_PLUS_MICRO;
  }
  break;
 default:
  break;
 }

read_done:
 mutex_unlock(&chip->lock);

 return ret;
}
