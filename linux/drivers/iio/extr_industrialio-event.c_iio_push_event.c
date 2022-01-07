
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iio_event_interface {int wait; int det_events; } ;
struct iio_event_data {int timestamp; int id; } ;
struct iio_dev {struct iio_event_interface* event_interface; } ;
typedef int s64 ;


 int EPOLLIN ;
 scalar_t__ iio_event_enabled (struct iio_event_interface*) ;
 int kfifo_put (int *,struct iio_event_data) ;
 int wake_up_poll (int *,int ) ;

int iio_push_event(struct iio_dev *indio_dev, u64 ev_code, s64 timestamp)
{
 struct iio_event_interface *ev_int = indio_dev->event_interface;
 struct iio_event_data ev;
 int copied;

 if (!ev_int)
  return 0;


 if (iio_event_enabled(ev_int)) {

  ev.id = ev_code;
  ev.timestamp = timestamp;

  copied = kfifo_put(&ev_int->det_events, ev);
  if (copied != 0)
   wake_up_poll(&ev_int->wait, EPOLLIN);
 }

 return 0;
}
