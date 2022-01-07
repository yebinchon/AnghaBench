
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau7802_state {int* scale_avail; int sample_rate; int lock; int client; int conversion_count; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;


 int NAU7802_CTRL2_CRS (int) ;
 int NAU7802_REG_CTRL2 ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 struct nau7802_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int* nau7802_sample_freq_avail ;
 int nau7802_set_gain (struct nau7802_state*,int) ;

__attribute__((used)) static int nau7802_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val, int val2, long mask)
{
 struct nau7802_state *st = iio_priv(indio_dev);
 int i, ret;

 switch (mask) {
 case 128:
  for (i = 0; i < ARRAY_SIZE(st->scale_avail); i++)
   if (val2 == st->scale_avail[i])
    return nau7802_set_gain(st, i);

  break;

 case 129:
  for (i = 0; i < ARRAY_SIZE(nau7802_sample_freq_avail); i++)
   if (val == nau7802_sample_freq_avail[i]) {
    mutex_lock(&st->lock);
    st->sample_rate = i;
    st->conversion_count = 0;
    ret = i2c_smbus_write_byte_data(st->client,
     NAU7802_REG_CTRL2,
     NAU7802_CTRL2_CRS(st->sample_rate));
    mutex_unlock(&st->lock);
    return ret;
   }

  break;

 default:
  break;
 }

 return -EINVAL;
}
