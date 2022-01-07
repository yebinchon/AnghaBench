
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmp007_data {unsigned int status_mask; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel2; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;
 int IIO_EV_DIR_RISING ;


 unsigned int TMP007_STATUS_LHF ;
 unsigned int TMP007_STATUS_LLF ;
 unsigned int TMP007_STATUS_OHF ;
 unsigned int TMP007_STATUS_OLF ;
 struct tmp007_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int tmp007_read_event_config(struct iio_dev *indio_dev,
  const struct iio_chan_spec *chan, enum iio_event_type type,
  enum iio_event_direction dir)
{
 struct tmp007_data *data = iio_priv(indio_dev);
 unsigned int mask;

 switch (chan->channel2) {
 case 129:
  if (dir == IIO_EV_DIR_RISING)
   mask = TMP007_STATUS_LHF;
  else
   mask = TMP007_STATUS_LLF;
  break;
 case 128:
  if (dir == IIO_EV_DIR_RISING)
   mask = TMP007_STATUS_OHF;
  else
   mask = TMP007_STATUS_OLF;
  break;
 default:
  return -EINVAL;
 }

 return !!(data->status_mask & mask);
}
