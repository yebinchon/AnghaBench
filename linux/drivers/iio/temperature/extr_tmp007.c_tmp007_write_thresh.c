
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tmp007_data {int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel2; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;
 int IIO_EV_DIR_RISING ;


 int TMP007_TDIE_HIGH_LIMIT ;
 int TMP007_TDIE_LOW_LIMIT ;
 int TMP007_TOBJ_HIGH_LIMIT ;
 int TMP007_TOBJ_LOW_LIMIT ;
 int i2c_smbus_write_word_swapped (int ,int ,int) ;
 struct tmp007_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int tmp007_write_thresh(struct iio_dev *indio_dev,
  const struct iio_chan_spec *chan, enum iio_event_type type,
  enum iio_event_direction dir, enum iio_event_info info,
  int val, int val2)
{
 struct tmp007_data *data = iio_priv(indio_dev);
 u8 reg;

 switch (chan->channel2) {
 case 129:
  if (dir == IIO_EV_DIR_RISING)
   reg = TMP007_TDIE_HIGH_LIMIT;
  else
   reg = TMP007_TDIE_LOW_LIMIT;
  break;
 case 128:
  if (dir == IIO_EV_DIR_RISING)
   reg = TMP007_TOBJ_HIGH_LIMIT;
  else
   reg = TMP007_TOBJ_LOW_LIMIT;
  break;
 default:
  return -EINVAL;
 }


 if (val < -256 || val > 255)
  return -EINVAL;


 return i2c_smbus_write_word_swapped(data->client, reg, (val << 7));
}
