
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct sgp_crc_word* raw_words; } ;
struct TYPE_3__ {struct sgp_crc_word* raw_words; } ;
struct sgp_data {int data_lock; TYPE_2__ buffer; int measure_gas_signals_cmd; TYPE_1__ iaq_buffer; int iaq_buffer_state; } ;
struct sgp_crc_word {int value; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;


 int EBUSY ;
 int EINVAL ;
 int IAQ_BUFFER_EMPTY ;
 int IAQ_BUFFER_VALID ;


 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int IIO_VAL_INT_PLUS_NANO ;






 int SGP_MEASUREMENT_DURATION_US ;
 int SGP_MEASUREMENT_LEN ;
 int be16_to_cpu (int ) ;
 struct sgp_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sgp_read_cmd (struct sgp_data*,int ,TYPE_2__*,int ,int ) ;

__attribute__((used)) static int sgp_read_raw(struct iio_dev *indio_dev,
   struct iio_chan_spec const *chan, int *val,
   int *val2, long mask)
{
 struct sgp_data *data = iio_priv(indio_dev);
 struct sgp_crc_word *words;
 int ret;

 switch (mask) {
 case 135:
  mutex_lock(&data->data_lock);
  if (data->iaq_buffer_state != IAQ_BUFFER_VALID) {
   mutex_unlock(&data->data_lock);
   return -EBUSY;
  }
  words = data->iaq_buffer.raw_words;
  switch (chan->address) {
  case 132:
  case 129:
   *val = 0;
   *val2 = be16_to_cpu(words[1].value);
   ret = IIO_VAL_INT_PLUS_NANO;
   break;
  case 133:
   *val = 0;
   *val2 = be16_to_cpu(words[0].value);
   ret = IIO_VAL_INT_PLUS_MICRO;
   break;
  default:
   ret = -EINVAL;
   break;
  }
  mutex_unlock(&data->data_lock);
  break;
 case 134:
  mutex_lock(&data->data_lock);
  if (chan->address == 128) {
   if (data->iaq_buffer_state == IAQ_BUFFER_EMPTY)
    ret = -EBUSY;
   else
    ret = 0;
   words = data->iaq_buffer.raw_words;
  } else {
   ret = sgp_read_cmd(data, data->measure_gas_signals_cmd,
        &data->buffer, SGP_MEASUREMENT_LEN,
        SGP_MEASUREMENT_DURATION_US);
   words = data->buffer.raw_words;
  }
  if (ret) {
   mutex_unlock(&data->data_lock);
   return ret;
  }

  switch (chan->address) {
  case 131:
   *val = be16_to_cpu(words[1].value);
   ret = IIO_VAL_INT;
   break;
  case 128:
  case 130:
   *val = be16_to_cpu(words[0].value);
   ret = IIO_VAL_INT;
   break;
  default:
   ret = -EINVAL;
   break;
  }
  mutex_unlock(&data->data_lock);
  break;
 default:
  return -EINVAL;
 }

 return ret;
}
