
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct iio_event_interface {int det_events; int wait; } ;
struct iio_dev {int info; struct iio_event_interface* event_interface; } ;
struct file {struct iio_dev* private_data; } ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int kfifo_is_empty (int *) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;

__attribute__((used)) static __poll_t iio_event_poll(struct file *filep,
        struct poll_table_struct *wait)
{
 struct iio_dev *indio_dev = filep->private_data;
 struct iio_event_interface *ev_int = indio_dev->event_interface;
 __poll_t events = 0;

 if (!indio_dev->info)
  return events;

 poll_wait(filep, &ev_int->wait, wait);

 if (!kfifo_is_empty(&ev_int->det_events))
  events = EPOLLIN | EPOLLRDNORM;

 return events;
}
