
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {int num_event_specs; TYPE_1__* event_spec; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;
struct TYPE_2__ {int type; int dir; int mask_shared_by_all; int mask_shared_by_dir; int mask_shared_by_type; int mask_separate; } ;


 int IIO_SEPARATE ;
 int IIO_SHARED_BY_ALL ;
 int IIO_SHARED_BY_DIR ;
 int IIO_SHARED_BY_TYPE ;
 int iio_device_add_event (struct iio_dev*,struct iio_chan_spec const*,int,int,int,int ,int *) ;

__attribute__((used)) static int iio_device_add_event_sysfs(struct iio_dev *indio_dev,
 struct iio_chan_spec const *chan)
{
 int ret = 0, i, attrcount = 0;
 enum iio_event_direction dir;
 enum iio_event_type type;

 for (i = 0; i < chan->num_event_specs; i++) {
  type = chan->event_spec[i].type;
  dir = chan->event_spec[i].dir;

  ret = iio_device_add_event(indio_dev, chan, i, type, dir,
   IIO_SEPARATE, &chan->event_spec[i].mask_separate);
  if (ret < 0)
   return ret;
  attrcount += ret;

  ret = iio_device_add_event(indio_dev, chan, i, type, dir,
   IIO_SHARED_BY_TYPE,
   &chan->event_spec[i].mask_shared_by_type);
  if (ret < 0)
   return ret;
  attrcount += ret;

  ret = iio_device_add_event(indio_dev, chan, i, type, dir,
   IIO_SHARED_BY_DIR,
   &chan->event_spec[i].mask_shared_by_dir);
  if (ret < 0)
   return ret;
  attrcount += ret;

  ret = iio_device_add_event(indio_dev, chan, i, type, dir,
   IIO_SHARED_BY_ALL,
   &chan->event_spec[i].mask_shared_by_all);
  if (ret < 0)
   return ret;
  attrcount += ret;
 }
 ret = attrcount;
 return ret;
}
