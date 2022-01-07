
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int mlock; } ;
struct TYPE_2__ {int realbits; int shift; } ;
struct iio_chan_spec {TYPE_1__ scan_type; int address; } ;
struct ad5686_state {int (* write ) (struct ad5686_state*,int ,int ,int) ;} ;


 int AD5686_CMD_WRITE_INPUT_N_UPDATE_N ;
 int EINVAL ;

 struct ad5686_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ad5686_state*,int ,int ,int) ;

__attribute__((used)) static int ad5686_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int val,
       int val2,
       long mask)
{
 struct ad5686_state *st = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 128:
  if (val > (1 << chan->scan_type.realbits) || val < 0)
   return -EINVAL;

  mutex_lock(&indio_dev->mlock);
  ret = st->write(st,
    AD5686_CMD_WRITE_INPUT_N_UPDATE_N,
    chan->address,
    val << chan->scan_type.shift);
  mutex_unlock(&indio_dev->mlock);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
