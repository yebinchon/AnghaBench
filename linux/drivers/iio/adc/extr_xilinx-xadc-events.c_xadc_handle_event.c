
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; int channel; } ;


 int IIO_EV_DIR_EITHER ;
 int IIO_EV_DIR_RISING ;
 int IIO_EV_TYPE_THRESH ;
 scalar_t__ IIO_TEMP ;
 int IIO_UNMOD_EVENT_CODE (scalar_t__,int ,int ,int ) ;
 int iio_get_time_ns (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;
 struct iio_chan_spec* xadc_event_to_channel (struct iio_dev*,unsigned int) ;

__attribute__((used)) static void xadc_handle_event(struct iio_dev *indio_dev, unsigned int event)
{
 const struct iio_chan_spec *chan;


 if (event == 0)
  return;

 chan = xadc_event_to_channel(indio_dev, event);

 if (chan->type == IIO_TEMP) {




  iio_push_event(indio_dev,
   IIO_UNMOD_EVENT_CODE(chan->type, chan->channel,
    IIO_EV_TYPE_THRESH, IIO_EV_DIR_RISING),
   iio_get_time_ns(indio_dev));
 } else {





  iio_push_event(indio_dev,
   IIO_UNMOD_EVENT_CODE(chan->type, chan->channel,
    IIO_EV_TYPE_THRESH, IIO_EV_DIR_EITHER),
   iio_get_time_ns(indio_dev));
 }
}
