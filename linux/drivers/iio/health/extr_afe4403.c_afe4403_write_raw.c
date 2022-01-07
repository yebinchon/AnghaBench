
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t address; int type; } ;
struct afe4403_data {int * fields; } ;


 int EINVAL ;


 unsigned int* afe4403_channel_leds ;
 struct afe4403_data* iio_priv (struct iio_dev*) ;
 int regmap_field_write (int ,int) ;

__attribute__((used)) static int afe4403_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val, int val2, long mask)
{
 struct afe4403_data *afe = iio_priv(indio_dev);
 unsigned int field = afe4403_channel_leds[chan->address];

 switch (chan->type) {
 case 128:
  switch (mask) {
  case 129:
   return regmap_field_write(afe->fields[field], val);
  }
  break;
 default:
  break;
 }

 return -EINVAL;
}
