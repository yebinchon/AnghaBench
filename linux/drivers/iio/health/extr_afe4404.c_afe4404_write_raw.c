
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t address; int type; } ;
struct afe4404_data {int * fields; } ;


 int EINVAL ;




 unsigned int* afe4404_channel_leds ;
 unsigned int* afe4404_channel_offdacs ;
 struct afe4404_data* iio_priv (struct iio_dev*) ;
 int regmap_field_write (int ,int) ;

__attribute__((used)) static int afe4404_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val, int val2, long mask)
{
 struct afe4404_data *afe = iio_priv(indio_dev);
 unsigned int led_field = afe4404_channel_leds[chan->address];
 unsigned int offdac_field = afe4404_channel_offdacs[chan->address];

 switch (chan->type) {
 case 128:
  switch (mask) {
  case 131:
   return regmap_field_write(afe->fields[offdac_field], val);
  }
  break;
 case 129:
  switch (mask) {
  case 130:
   return regmap_field_write(afe->fields[led_field], val);
  }
  break;
 default:
  break;
 }

 return -EINVAL;
}
