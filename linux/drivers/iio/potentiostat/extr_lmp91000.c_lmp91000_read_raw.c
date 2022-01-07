
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lmp91000_data {int adc_chan; int cb_buffer; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;




 int IIO_VAL_INT ;
 int LMP91000_TEMP_BASE ;
 int iio_channel_start_all_cb (int ) ;
 int iio_channel_stop_all_cb (int ) ;
 int iio_convert_raw_to_processed (int ,int,int*,int) ;
 struct lmp91000_data* iio_priv (struct iio_dev*) ;
 int iio_read_channel_offset (int ,int*,int*) ;
 int iio_read_channel_scale (int ,int*,int*) ;
 int lmp91000_read (struct lmp91000_data*,int ,int*) ;
 int* lmp91000_temp_lut ;

__attribute__((used)) static int lmp91000_read_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int *val, int *val2, long mask)
{
 struct lmp91000_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 129:
 case 130: {
  int ret = iio_channel_start_all_cb(data->cb_buffer);

  if (ret)
   return ret;

  ret = lmp91000_read(data, chan->address, val);

  iio_channel_stop_all_cb(data->cb_buffer);

  if (ret)
   return ret;

  if (mask == 130) {
   int tmp, i;

   ret = iio_convert_raw_to_processed(data->adc_chan,
          *val, &tmp, 1);
   if (ret)
    return ret;

   for (i = 0; i < ARRAY_SIZE(lmp91000_temp_lut); i++)
    if (lmp91000_temp_lut[i] < tmp)
     break;

   *val = (LMP91000_TEMP_BASE + i) * 1000;
  }
  return IIO_VAL_INT;
 }
 case 131:
  return iio_read_channel_offset(data->adc_chan, val, val2);
 case 128:
  return iio_read_channel_scale(data->adc_chan, val, val2);
 }

 return -EINVAL;
}
