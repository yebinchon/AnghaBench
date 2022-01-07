
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t address; } ;
struct ads1015_data {int* data_rate; int lock; TYPE_2__* thresh_data; TYPE_1__* channel_data; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;
struct TYPE_4__ {int high_thresh; int low_thresh; unsigned int comp_queue; } ;
struct TYPE_3__ {int data_rate; } ;


 int EINVAL ;
 int IIO_EV_DIR_RISING ;


 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int USEC_PER_SEC ;
 int* ads1015_comp_queue ;
 struct ads1015_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ads1015_read_event(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, enum iio_event_type type,
 enum iio_event_direction dir, enum iio_event_info info, int *val,
 int *val2)
{
 struct ads1015_data *data = iio_priv(indio_dev);
 int ret;
 unsigned int comp_queue;
 int period;
 int dr;

 mutex_lock(&data->lock);

 switch (info) {
 case 128:
  *val = (dir == IIO_EV_DIR_RISING) ?
   data->thresh_data[chan->address].high_thresh :
   data->thresh_data[chan->address].low_thresh;
  ret = IIO_VAL_INT;
  break;
 case 129:
  dr = data->channel_data[chan->address].data_rate;
  comp_queue = data->thresh_data[chan->address].comp_queue;
  period = ads1015_comp_queue[comp_queue] *
   USEC_PER_SEC / data->data_rate[dr];

  *val = period / USEC_PER_SEC;
  *val2 = period % USEC_PER_SEC;
  ret = IIO_VAL_INT_PLUS_MICRO;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 mutex_unlock(&data->lock);

 return ret;
}
