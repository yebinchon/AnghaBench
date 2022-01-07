
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma9553_event {int enabled; } ;
struct mma9553_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel2; int type; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;
 struct mma9553_data* iio_priv (struct iio_dev*) ;
 struct mma9553_event* mma9553_get_event (struct mma9553_data*,int ,int ,int) ;

__attribute__((used)) static int mma9553_read_event_config(struct iio_dev *indio_dev,
         const struct iio_chan_spec *chan,
         enum iio_event_type type,
         enum iio_event_direction dir)
{
 struct mma9553_data *data = iio_priv(indio_dev);
 struct mma9553_event *event;

 event = mma9553_get_event(data, chan->type, chan->channel2, dir);
 if (!event)
  return -EINVAL;

 return event->enabled;
}
