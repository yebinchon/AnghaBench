
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;
struct ads8688_state {size_t* range; int vref_mv; int lock; } ;
struct TYPE_3__ {int offset; int scale; size_t range; int reg; } ;


 size_t ADS8688_PLUSMINUS25VREF ;
 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;


 TYPE_1__* ads8688_range_def ;
 int ads8688_write_reg_range (struct iio_dev*,struct iio_chan_spec const*,int ) ;
 struct ads8688_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ads8688_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val, int val2, long mask)
{
 struct ads8688_state *st = iio_priv(indio_dev);
 unsigned int scale = 0;
 int ret = -EINVAL, i, offset = 0;

 mutex_lock(&st->lock);
 switch (mask) {
 case 128:

  offset = ads8688_range_def[st->range[chan->channel]].offset;
  if (offset == 0 && val2 == ads8688_range_def[0].scale * st->vref_mv) {
   mutex_unlock(&st->lock);
   return -EINVAL;
  }


  for (i = 0; i < ARRAY_SIZE(ads8688_range_def); i++)
   if (val2 == ads8688_range_def[i].scale * st->vref_mv &&
       offset == ads8688_range_def[i].offset) {
    ret = ads8688_write_reg_range(indio_dev, chan,
     ads8688_range_def[i].reg);
    break;
   }
  break;
 case 129:




  if (!(ads8688_range_def[0].offset == val ||
      ads8688_range_def[3].offset == val)) {
   mutex_unlock(&st->lock);
   return -EINVAL;
  }





  if (val == 0 &&
      st->range[chan->channel] == ADS8688_PLUSMINUS25VREF) {
   mutex_unlock(&st->lock);
   return -EINVAL;
  }

  scale = ads8688_range_def[st->range[chan->channel]].scale;


  for (i = 0; i < ARRAY_SIZE(ads8688_range_def); i++)
   if (val == ads8688_range_def[i].offset &&
       scale == ads8688_range_def[i].scale) {
    ret = ads8688_write_reg_range(indio_dev, chan,
     ads8688_range_def[i].reg);
    break;
   }
  break;
 }

 if (!ret)
  st->range[chan->channel] = ads8688_range_def[i].range;

 mutex_unlock(&st->lock);

 return ret;
}
