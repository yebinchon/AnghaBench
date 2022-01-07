
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nau7802_state {size_t sample_rate; int vref_mv; TYPE_1__* client; int lock; int conversion_count; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct TYPE_3__ {int irq; } ;


 int EINVAL ;



 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int NAU7802_CTRL1_GAINS_BITS ;
 int NAU7802_CTRL2_CHS (int ) ;
 int NAU7802_CTRL2_CHS_BIT ;
 int NAU7802_CTRL2_CRS (size_t) ;
 int NAU7802_REG_CTRL1 ;
 int NAU7802_REG_CTRL2 ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int ) ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int ,int) ;
 struct nau7802_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nau7802_read_irq (struct iio_dev*,struct iio_chan_spec const*,int*) ;
 int nau7802_read_poll (struct iio_dev*,struct iio_chan_spec const*,int*) ;
 int* nau7802_sample_freq_avail ;

__attribute__((used)) static int nau7802_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct nau7802_state *st = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 130:
  mutex_lock(&st->lock);





  ret = i2c_smbus_read_byte_data(st->client, NAU7802_REG_CTRL2);
  if (ret < 0) {
   mutex_unlock(&st->lock);
   return ret;
  }

  if (((ret & NAU7802_CTRL2_CHS_BIT) && !chan->channel) ||
    (!(ret & NAU7802_CTRL2_CHS_BIT) &&
     chan->channel)) {
   st->conversion_count = 0;
   ret = i2c_smbus_write_byte_data(st->client,
     NAU7802_REG_CTRL2,
     NAU7802_CTRL2_CHS(chan->channel) |
     NAU7802_CTRL2_CRS(st->sample_rate));

   if (ret < 0) {
    mutex_unlock(&st->lock);
    return ret;
   }
  }

  if (st->client->irq)
   ret = nau7802_read_irq(indio_dev, chan, val);
  else
   ret = nau7802_read_poll(indio_dev, chan, val);

  mutex_unlock(&st->lock);
  return ret;

 case 128:
  ret = i2c_smbus_read_byte_data(st->client, NAU7802_REG_CTRL1);
  if (ret < 0)
   return ret;





  *val = st->vref_mv;
  *val2 = 23 + (ret & NAU7802_CTRL1_GAINS_BITS);

  return IIO_VAL_FRACTIONAL_LOG2;

 case 129:
  *val = nau7802_sample_freq_avail[st->sample_rate];
  *val2 = 0;
  return IIO_VAL_INT;

 default:
  break;
 }

 return -EINVAL;
}
