
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau7802_state {scalar_t__ conversion_count; scalar_t__ sample_rate; int last_value; int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int IIO_VAL_INT ;
 scalar_t__ NAU7802_MIN_CONVERSIONS ;
 int NAU7802_PUCTRL_CR_BIT ;
 int NAU7802_REG_PUCTRL ;
 scalar_t__ NAU7802_SAMP_FREQ_320 ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 struct nau7802_state* iio_priv (struct iio_dev*) ;
 int mdelay (int) ;
 int msleep (int) ;
 int nau7802_read_conversion (struct nau7802_state*) ;
 int nau7802_sync (struct nau7802_state*) ;

__attribute__((used)) static int nau7802_read_poll(struct iio_dev *indio_dev,
   struct iio_chan_spec const *chan,
   int *val)
{
 struct nau7802_state *st = iio_priv(indio_dev);
 int ret;

 nau7802_sync(st);


 ret = nau7802_read_conversion(st);
 if (ret < 0)
  return ret;






 do {
  ret = i2c_smbus_read_byte_data(st->client, NAU7802_REG_PUCTRL);
  if (ret < 0)
   return ret;

  while (!(ret & NAU7802_PUCTRL_CR_BIT)) {
   if (st->sample_rate != NAU7802_SAMP_FREQ_320)
    msleep(20);
   else
    mdelay(4);
   ret = i2c_smbus_read_byte_data(st->client,
       NAU7802_REG_PUCTRL);
   if (ret < 0)
    return ret;
  }

  ret = nau7802_read_conversion(st);
  if (ret < 0)
   return ret;
  if (st->conversion_count < NAU7802_MIN_CONVERSIONS)
   st->conversion_count++;
 } while (st->conversion_count < NAU7802_MIN_CONVERSIONS);

 *val = st->last_value;

 return IIO_VAL_INT;
}
